#!/bin/bash

docker run -d --name web -p 8000 php:7.4-apache

docker start web
docker exec -it web bash

apt update
apt-get install nano
nano index.html
tail index.html