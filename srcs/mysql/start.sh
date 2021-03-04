#!/bin/sh

rc update
rc default
rc-service mariadb setup
rc-service mariadb start
mysql --execute="CREATE DATABASE WordPress_db;\
                        GRANT ALL PRIVILEGES ON WordPress_db.* TO 'admin'@'%' IDENTIFIED BY 'admin';\
                        FLUSH PRIVILEGES;"
mysql -uroot WordPress_db < WordPress_db.sql
rc-service mariadb stop
exec /usr/bin/mysqld_safe