#!/bin/sh
adduser -D admin
echo "admin:admin" | chpasswd
vsftpd /etc/vsftpd/vsftpd.conf
