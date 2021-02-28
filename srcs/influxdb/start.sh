#!/bin/sh

rc-status
telegraf --config /etc/telegraf.conf
influx -execute "CREATE DATABASE influx_db"
influx -execute "CREATE USER admin WITH PASSWORD 'admin'"
influx -execute "GRANT ALL ON influx_db TO admin"
rc-service influxdb restart
