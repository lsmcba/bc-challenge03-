#!/bin/bash

echo "Mostrando los contenedores que estan corriendo ahora...."
docker ps -a

echo "Deteniendo los contenedores...."
docker stop $(docker ps -a -q)

echo "Eliminando los contenedores...."
docker rm -f $(docker ps -a -q)

echo "Mostrando que los contenedores fueron eliminados...."
docker ps -a