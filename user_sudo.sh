#!/bin/bash

#ajout du paquet sudo
apt-get install sudo

#ajout d'un nouvel user
#option -m pour creer un repertoire de connexion s'il n'existe pas
#option -g pour lui mettre dans le groupe sudo
#option -s pour lui attribuer un shell
useradd -m -g sudo -s /bin/bash ptutore
#ajout d'un mdp au nouvel user
passwd ptutore
#copie du script
cp ./build_script /home/ptutore
#connexion avec l'utilisateur créé
su ptutore

exit