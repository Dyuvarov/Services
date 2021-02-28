#!/bin/sh

adduser -D admin
echo "admin:admin" | chpasswd
user/sbin/vsftpd /etc/vsftpd/vsftpd.conf
