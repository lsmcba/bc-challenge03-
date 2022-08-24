#!/bin/bash

echo "------------------------------------------------------------------------------"
echo "Iniciando Ejercicio 8 del Challenge Numero 3, perteneciente al BootCamp 02"
echo "------------------------------------------------------------------------------"

echo "Clonando repositorio https://github.com/roxsross/pokepy ...."
git clone https://github.com/roxsross/pokepy 
echo "Repositorio clonado ...."
sleep 5

echo "------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------"

echo "Ingresando al directorio pokepy...."
cd pokepy
echo "$PWD"
echo "Ejecutando comandos dentro del directorio."
sleep 5

echo "------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------"

echo "Descargamos la imagen y creamos el contenedor Pyton"

#docker volume create static_content
docker build -t lsmcba/pokepy-reto8:1.0 .
# docker run -d --name pokepy-reto8 -v static_content:/usr/share/nginx/html -p 5000:5000 lsmcba/pokepy-reto8:1.0
docker run -it -p 5000:5000 lsmcba/pokepy-reto8:1.0
echo "Contenedor Creado ...."
docker ps -a
docker images
sleep 5

echo "------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------"

echo "Iniciamos el docker e ingresamos a la pagina"
docker start pokepy-reto8
google-chrome --disable-gpu http://localhost:5000
echo "Saliendo de la pagina ...."
sleep 5

echo "------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------"

echo "Iniciamos el copiado a DockerHub"
read -p "Introduzca el usuario: " username
echo -n "Introduzca la contraseña: "
read -s password
docker login -u "$username" -p "$password" docker.io
docker tag lsmcba/pokepy-reto8:1.0 "$username"/pokepy-reto8:1.0
docker push "$username"/pokepy-reto8:1.0
echo "Imagen subida a DockerHub...."
sleep 5

echo "------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------"

echo "Limpiamos el Sistema"
echo "******************************************************************************"
echo "Detenemos el contenedor...."
docker stop pokepy-reto8
echo "Contenedor detenido."
echo "******************************************************************************"
echo "Eliminamos el contenedor...."
docker rm -f pokepy-reto8
docker ps -a
echo "Contenedor eliminado."
echo "******************************************************************************"
echo "Eliminamos la imagen...."
docker rmi -f lsmcba/pokepy-reto8:1.0
docker images
echo "Imagen eliminada."
cd ..
echo "******************************************************************************"
echo "Eliminamos el repositorio...."
rm -rf pokepy/
echo "Repositorio eliminado."
echo "------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------"