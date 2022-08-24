#!/bin/bash

docker volume create static_content
docker build -t web .
docker run -d --name web -v static_content:/usr/share/nginx/html -p 8000:80 web

docker start web
docker exec -it web bash 

#nano index.html
#tail index.html