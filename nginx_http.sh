#!/bin/bash

#demarrage du conteneur
#ajout de sa page web personnalisé
sudo docker run -t -d -v ./docker-share/html:/usr/share/nginx/html --name serveurHTTP -p 8080:80 nginx

#verification de l'etat des conteneurs
sudo docker ps

exit