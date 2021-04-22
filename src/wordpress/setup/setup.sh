#!/bin/sh
apk update
apk add nginx
apk add openrc
rc-status
touch /run/openrc/softlevel
mv ~/default.conf /etc/nginx/conf.d/
mv ~/index.html /var/www
wget http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm latest.tar.gz
mv wordpress var/www/