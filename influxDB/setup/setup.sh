#!/bin/sh
apk update
apk add openrc influxdb
influx -execute "CREATE USER emallah WITH PASSWORD 'emallah123456' WITH ALL PRIVILEGES"