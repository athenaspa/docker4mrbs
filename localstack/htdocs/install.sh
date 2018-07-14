#!/usr/bin/env bash

hg clone -r default http://hg.code.sf.net/p/mrbs/hg-code mrbs
cd mrbs
mysql -u root -p -h dbserver mrbs < tables.my.sql
cd web
cp .htaccess-apache-2.4 .htaccess
cp config.inc.php-sample config.inc.php
sed -i '35s/\/\/$timezone = "Europe\/London";/$timezone = "Europe\/Rome";/' config.inc.php
sed -i '47s/$db_host = "localhost";/$db_host = "dbserver";/' config.inc.php
sed -i '58s/$db_login = "mrbs";/$db_login = "mrbs_usr";/' config.inc.php
sed -i '60s/$db_password = \x27mrbs-password\x27;/$db_login = "mrbs_pwd";/' config.inc.php