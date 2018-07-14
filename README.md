# docker4mrbs

Dockerized instance of https://mrbs.sourceforge.io


# Setup
install docker  
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose  
install git 
git clone git@github.com:erighetto/docker4mrbs.git 

# Lounch containers
docker-compose up -d

# Inside container
docker exec -it mrbs_web bash  
./install.sh  