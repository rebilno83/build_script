#!/bin/bash

#ajout du droit d'execution aux scripts
sudo chmod +x docker.sh
sudo chmod +x ./ssh/ssh.sh
sudo chmod +x nginx_http.sh
sudo chmod +x mailcow.sh

#conversion des scripts
sudo dos2unix docker.sh
sudo dos2unix ./ssh/ssh.sh
sudo dos2unix nginx_http.sh
sudo dos2unix mailcow.sh

#Veuillez supprimer le '#' devant la ligne que vous voulez exécuter
#lancement des scripts
#./docker.sh
#./ssh/ssh.sh
#./nginx_http.sh
#./mailcow.sh

exit