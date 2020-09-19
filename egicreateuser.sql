-- bikin user
create database openolat character set utf8 collate utf8_unicode_ci;
create user openolat@localhost identified by 'openolat';
grant all on openolat.* to openolat@localhost;

-- akses user
CREATE USER 'openolat'@'%' IDENTIFIED BY 'openolat';
grant all privileges on 'openolat'.* to 'openolat'@'%' with grant option;
