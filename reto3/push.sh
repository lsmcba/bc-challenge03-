#!/bin/bash

read -p "Introduzca el usuario: " username

echo -n "Introduzca la contraseña: "
read -s password

docker login -u "$username" -p "$password" docker.io
docker tag bootcamp_nginx "$username"/bootcamp_nginx:v1.0.0
docker push "$username"/bootcamp_nginx:v1.0.0