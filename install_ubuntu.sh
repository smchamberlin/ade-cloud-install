apt update
apt-get -y install docker.io
apt remove -y golang-docker-credential-helpers
docker login -u iamapikey -p <your_API_key> registry.ng.bluemix.net
apt-get -y install docker-compose
sysctl -w vm.max_map_count=262144
wget https://raw.githubusercontent.com/smchamberlin/ade-cloud-install/master/docker-compose.yml
wget https://raw.githubusercontent.com/smchamberlin/ade-cloud-install/master/.env
docker-compose up -d

