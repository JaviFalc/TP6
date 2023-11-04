FROM Dcoker:alpine
FROM mysql
VOLUME /var/lib/mysql
ENV MYSQL_ROOT_PASSWORD=password MYSQL_DATABASE=hospital   
COPY ./sql/ /docker-entrypoint-initdb.d/
