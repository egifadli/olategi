FROM egifadli/mysqlbase:1

MAINTAINER egi fadli

ENV MYSQL_ROOT_PASSWORD=egi

#ENV MYSQL_DATABASE=openolat

#ENV MYSQL_USER=openolat

#ENV MYSQL_PASSWORD=egi

ENV QUERY="create database openolat character set utf8 collate utf8_unicode_ci;create user openolat@localhost identified by 'openolat'; grant all on openolat.* to openolat@localhost; CREATE USER 'openolat'@'%' IDENTIFIED BY 'openolat'; GRANT ALL ON *.* TO 'openolat'@'%';"

RUN /etc/init.d/mysql start && service mysql start && mysql -uroot -p$MYSQL_ROOT_PASSWORD -e "$QUERY"

COPY setupDatabase.sql /etc/mysql/

RUN cd /etc/mysql/ && /etc/init.d/mysql start && mysql -uopenolat -popenolat openolat < setupDatabase.sql

RUN mv /etc/mysql/mysql.conf.d/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf.backup

COPY mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

RUN chmod 0444 /etc/mysql/mysql.conf.d/mysqld.cnf

EXPOSE 3306

ENTRYPOINT /etc/init.d/mysql start && service mysql start && /bin/bash
