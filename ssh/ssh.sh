#!/bin/bash

sudo apt install openssh-client
#telechargement de l'image centos
sudo docker pull centos

sudo mkdir -p /docker/centos-ssh
cd /docker/centos-ssh

#creation des fichiers de config. d'une nouv. image
#fichier contenant les autorisations et les clés d'hôte
sudo echo "Port 22
Protocol 2

HostKey /etc/ssh/ssh_host_rsa_key
HostKey /etc/ssh/ssh_host_dsa_key
HostKey /etc/ssh/ssh_host_ecdsa_key
HostKey /etc/ssh/ssh_host_ed25519_key

LoginGraceTime 120
PermitRootLogin yes
StrictModes yes

RSAAuthentication yes
PubkeyAuthentication yes
UsePam yes" | sudo tee ./sshd_config

#dockerfile
#sur la ligne 36, nous rajoutons un fichier personnalisé dans le conteneur
sudo echo "FROM centos
RUN mkdir -p /var/run/sshd
RUN yum -y update
RUN yum install -y openssh-server
RUN ssh-keygen -A
ADD ./sshd_config /etc/ssh/sshd_config
ADD ./test.txt /root
RUN echo root:R00tR00t | chpasswd
CMD /usr/sbin/sshd -D" | sudo tee ./Dockerfile

#construction de la nouv. image
sudo docker build -t centos_ssh .

#demarrage du conteneur
sudo docker run -it -d --name serverSSH1 -p 2201:22 centos_ssh

#verification de l'etat du conteneur
sudo docker ps

exit