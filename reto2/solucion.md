**Primera parte: Arrancar un contenedor que se llame `bbdd` y que ejecute una instancia de la imagen **mariadb** para que sea accesible desde el puerto 3306. Establecer variables de entorno** 

![Primea Parte](https://imgur.com/2o7AFsT.png)

**Segunda Parte: Pantallazo de la conexión al servidor de base de datos con el usuario creado y de la base de datos `prueba` creada automáticamente.**

 ![Segunda Parte Seleccion](https://imgur.com/Dn3yii3.png)
 ![Segunda Parte Conexion](https://imgur.com/kmDTAha.png)
 
**Y comprobamos que podemos acceder a la base de datos y que nuestro esquema `prueba` está creado**

![Segunda Parte DBeaver](https://imgur.com/UhdL926.png)

**Tercera Parte: Pantallazo donde se comprueba que no se puede borrar la imagen `mariadb` mientras el contenedor `bbdd` está creado**

![Intento Eliminar Imagen](https://imgur.com/CAagVRE.png)