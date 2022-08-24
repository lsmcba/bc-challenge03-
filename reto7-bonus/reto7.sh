#!/bin/bash

echo "Creamos el Docker Apache/PHP"

docker volume create static_content
docker build -t web .
docker run -d --name web -v static_content:/usr/share/nginx/html -p 8000:80 web

echo "Iniciamos el docker"

docker start web

google-chrome http://localhost:8000 http://localhost:8000/mes.php

echo "Ejecutamos el bash dentro del docker"

docker exec -it web bash reto7plus.sh

echo -e "\nDejamos el bash dentro del docker. Escriba exit para salir"

docker exec -it web bash

clear

echo "Detenemos y eliminamos el contenedor"
docker ps -a
docker stop web
docker rm web
docker ps -a