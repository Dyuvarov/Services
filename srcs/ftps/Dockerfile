FROM alpine:3.12

#update before install
RUN apk update
RUN apk upgrade

#ftps
RUN apk add vsftpd openssl

#openssl key
RUN openssl req -x509 -new -newkey rsa:2048 -nodes \
    -keyout /etc/ssl/private/privkey.key -out /etc/ssl/certs/cert.crt \
    -subj '/C=RU/ST=Tatarstan/L=Kazan/O=study/OU=no/CN=ugreyiro'

COPY vsftpd.conf /etc/vsftpd/
RUN chmod -R 777 /etc/vsftpd/vsftpd.conf

RUN mkdir -p /var/log/ftp
RUN touch /var/log/ftp/xferlog

COPY start.sh /
RUN chmod +x start.sh
CMD ["/start.sh"]
EXPOSE 21 21100
