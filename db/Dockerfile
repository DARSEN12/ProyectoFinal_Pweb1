FROM mariadb:latest

ENV MYSQL_ROOT_PASSWORD=contrasena

EXPOSE 3306

COPY ./datos/permisos_esquema.sql /docker-entrypoint-initdb.d/
COPY ./datos/principal_esquema.sql /docker-entrypoint-initdb.d/
COPY ./datos/permisos_datos.sql /docker-entrypoint-initdb.d/
COPY ./datos/principal_datos.sql /docker-entrypoint-initdb.d/

CMD ["mariadbd"]

