#!/bin/sh
apk update
apk add openrc libc6-compat
wget https://dl.grafana.com/oss/release/grafana-7.5.5.linux-amd64.tar.gz
tar -zxvf grafana-7.5.5.linux-amd64.tar.gz