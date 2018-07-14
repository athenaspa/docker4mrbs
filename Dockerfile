FROM thecodingmachine/php:7.1-v1-apache

USER root

# Commont tools
RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y \
      gettext \
      libfreetype6-dev \
      libjpeg62-turbo-dev \
      libpng-dev \
      mysql-client \
      wget \
      mercurial

# Reconfigure GD
RUN docker-php-ext-configure gd \
      --with-gd \
      --with-freetype-dir=/usr/include/ \
      --with-png-dir=/usr/include/ \
      --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd && \
    docker-php-ext-enable gd

# Environment variables
ENV PHP_EXTENSION_XDEBUG=0 \
    PHP_INI_MEMORY_LIMIT=1g \
    PHP_INI_ERROR_REPORTING=E_ALL \
    PHP_INI_MAX_INPUT_VARS=5000 \
    PHP_INI_UPLOAD_MAX_FILESIZE=64M \
    PHP_INI_POST_MAX_SIZE=64M \
    PHP_INI_MAX_EXECUTION_TIME=6000 \
    PHP_INI_DATE__TIMEZONE=Europe/Rome

USER docker