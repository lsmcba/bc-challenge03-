#!/bin/bash   
 
   docker run -d --name bbdd -p 3306:3306 --env MARIADB_ROOT_PASSWORD=root --env MARIADB_DATABASE=prueba --env MARIADB_USER=invitado --env MARIADB_PASSWORD=invitado mariadb
   docker ps