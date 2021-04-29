#!/bin/sh
apk update
apk add nginx openrc php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-xml php7-json php7-iconv php7-session php-mbstring
rc-status
touch /run/openrc/softlevel
mv ~/default.conf /etc/nginx/conf.d/
wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
rm phpMyAdmin-5.0.2-all-languages.tar.gz
mv phpMyAdmin-5.0.2-all-languages/ var/www/phpmyadmin
mv var/www/phpmyadmin/config.sample.inc.php var/www/phpmyadmin/config.inc.php 