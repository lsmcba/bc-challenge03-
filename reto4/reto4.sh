#!/bin/bash

docker volume create static_content
docker build -t simple-apache:new .
docker run -d --name apache -v static_content:/usr/share/nginx/html -p 5050:80 simple-apache:new

docker ps

docker images