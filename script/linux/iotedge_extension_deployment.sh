sudo apt-get install curl
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
sudo apt-get install jenkins --yes
sudo apt install python-pip
sudo apt-get update
sudo apt-get install openjdk-8-jdk-headless
sudo apt install maven
az extension add --name azure-cli-iot-ext
pip install -U iotedgedev
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
sudo shutdown -r 1
