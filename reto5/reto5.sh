#!/bin/bash

docker build -t bootcamp_nodejs .
docker run -it --rm --name bootcamp_nodejs -p 4000:4000 bootcamp_nodejs

clear

echo "Ingrese el usuario y contraseña para subir la imagen a Docker Hub"
echo

read -p "Introduzca el usuario: " username

echo -n "Introduzca la contraseña: "
read -s password

docker login -u "$username" -p "$password" docker.io
docker tag bootcamp_nodejs "$username"/bootcamp_nodejs:v1.0.0
docker push "$username"/bootcamp_nodejs:v1.0.0