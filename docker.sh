#!/bin/bash

sudo apt update
#installation de quelques paquets préréquis
sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common
#ajout de la clé GPG du référentiel Docker officiel
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
#ajout du référentiel Docker aux sources APT
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

sudo apt update

#installation de docker
sudo apt install docker-ce

#installation de docker-compose
#telechargement de la version stable actuelle de Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
#ajout des autorisation d'execution
sudo chmod +x /usr/local/bin/docker-compose

#verification de l'activation du processus
sudo systemctl status docker
#verification de l'installation de docker-compose
sudo docker-compose --version

exit