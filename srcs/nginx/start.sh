#!/bin/sh

adduser -D ugreyiro && echo "ugreyiro:ugreyiro" | chpasswd
ssh-keygen -A
/usr/bin/supervisord -c /etc/supervisord.conf
