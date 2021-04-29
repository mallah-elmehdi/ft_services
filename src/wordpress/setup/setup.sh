#!/bin/sh
apk update
apk add nginx openrc php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-xml php7-json php7-iconv php7-session php-mbstring
rc-status
touch /run/openrc/softlevel
mv ~/default.conf /etc/nginx/conf.d/
wget http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm latest.tar.gz
mv wordpress /var/www
mv ~/wp-config.php /var/www/wordpress

apk add mysql mysql-client
/etc/init.d/mariadb setup
service mariadb start
mysql -e" CREATE DATABASE emallah;"
mysql -e "CREATE USER 'elmehdi'@localhost IDENTIFIED BY 'emallah123456';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'elmehdi'@localhost IDENTIFIED BY 'emallah123456';"