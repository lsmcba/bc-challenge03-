#!/bin/bash

echo "Creando un contenedor NGINX...."
docker volume create static_content
docker build -t bootcamp_web .
docker run -d --name bootcamp-web -v static_content:/usr/share/nginx/html -p 9999:80 bootcamp_web

echo "Mostrando el contenedor creado...."
docker ps

echo "Mostrando el contenido de la carpeta bootcamp-web dentro del contenedor...."
docker exec bootcamp-web sh
cd bootcamp-web
ls -l