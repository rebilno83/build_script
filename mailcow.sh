#!/bin/bash

cd /opt
sudo git clone https://github.com/mailcow/mailcow/mailcow-dockerized
cd ./mailcow-dockerized
./generate_config.sh
sudo docker-compose pull
sudo docker-compose up -d

sudo docker-compose ps

exit