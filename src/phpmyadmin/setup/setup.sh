#!/bin/sh
apk update
apk add nginx openrc php-mbstring php-session php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom php7-fpm
rc-status
touch /run/openrc/softlevel
mv ~/default.conf /etc/nginx/conf.d/
mv ~/index.html /var/www
wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
rm phpMyAdmin-5.0.2-all-languages.tar.gz
mv phpMyAdmin-5.0.2-all-languages/ var/www/phpmyadmin
mv var/www/phpmyadmin/config.sample.inc.php var/www/phpmyadmin/config.inc.php 