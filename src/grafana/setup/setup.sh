#!/bin/sh
apk update
apk add nginx
apk add openrc
rc-status
touch /run/openrc/softlevel
mv ~/default.conf /etc/nginx/conf.d/
mv ~/index.html /var/www
mv ~/style.css /var/www