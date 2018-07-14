# docker4mrbs

Dockerized instance of https://mrbs.sourceforge.io


# Setup
install docker: https://docs.docker.com/install/linux/docker-ce/ubuntu/#set-up-the-repository  
install docker-compose:  
    
    sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose  

install git: https://git-scm.com/download/linux 

    git clone git@github.com:erighetto/docker4mrbs.git 

# Start containers
    docker-compose up -d

# Install
    docker exec -it mrbs_web bash  
    ./install.sh  