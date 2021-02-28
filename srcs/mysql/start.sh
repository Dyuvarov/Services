#!/bin/sh

#mysql_install_db --user=mysql --datadir=/var/lib/mysql
/etc/init.d/mariadb setup
rc-status
rc-service mariadb start
mysql --execute="CREATE DATABASE WordPress_db;\
                        GRANT ALL PRIVILEGES ON WordPress_db.* TO 'admin'@'%' IDENTIFIED BY 'admin';\
                        FLUSH PRIVILEGES;"
rc-service mariadb restart
