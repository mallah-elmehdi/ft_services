#!/bin/sh
apk update
apk add openrc mysql mysql-client
rc-status
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
service mariadb start
mysql -e" CREATE DATABASE emallah;"
mysql -e "CREATE USER 'elmehdi'@localhost IDENTIFIED BY 'emallah123456';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'elmehdi'@localhost IDENTIFIED BY 'emallah123456';"