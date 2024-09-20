#Proof of concept
FROM mysql:8.0.33
#creating folder and granting permissions
RUN mkdir /var/log/mysql && chmod 777 /var/log/mysql
COPY my.cnf /etc/mysql/conf.d/my.cnf
#creating "myuser" user on first start, required by specific application - also handling root user to make exactly like application requires
COPY init.sql /docker-entrypoint-initdb.d/
#port for MySQL
EXPOSE 3306