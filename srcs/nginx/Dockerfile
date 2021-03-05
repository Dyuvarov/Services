FROM alpine:3.12

#update before install
RUN apk update
RUN apk upgrade

#supervisor
RUN apk add supervisor

#install
RUN apk add nginx openssl openssh
RUN mkdir -p /run/nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /var/www/
COPY k8s.png /var/www/

COPY supervisord.conf /etc/supervisord.conf

#openssl key
RUN openssl req -x509 -new -newkey rsa:2048 -nodes \
    -keyout /etc/ssl/private/privkey.key -out /etc/ssl/certs/cert.crt \
    -subj '/C=RU/ST=Tatarstan/L=Kazan/O=study/OU=no/CN=ugreyiro'

EXPOSE 22 80 443

#starting script
COPY start.sh /tmp/
RUN chmod +x /tmp/start.sh
CMD ["/tmp/start.sh"]

