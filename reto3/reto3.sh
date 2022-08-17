#!/bin/bash

docker volume create static_content
docker build -t bootcamp_nginx .
docker run -d --name bootcamp_container -v static_content:/usr/share/nginx/html -p 8080:80 bootcamp_nginx

docker ps

docker images