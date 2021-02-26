FROM alpine:3.12

#update before install
RUN apk update
RUN apk upgrade

#supervisor
RUN apk add supervisor

#nginx install
RUN apk add nginx openssl openssh
RUN mkdir -p /run/nginx
#RUN mkdir www
COPY srcs/nginx.conf /etc/nginx/conf.d/default.conf

COPY srcs/supervisord.conf /etc/supervisord.conf

#openssl key
RUN openssl req -x509 -new -newkey rsa:2048 -nodes \
    -keyout /etc/ssl/private/privkey.key -out /etc/ssl/certs/cert.crt \
    -subj '/C=RU/ST=Tatarstan/L=Kazan/O=study/OU=no/CN=ugreyiro'

EXPOSE 22 80 443

#starting script
COPY ./srcs/start.sh /tmp/
RUN chmod +x /tmp/start.sh
CMD ["/tmp/nginx_start.sh"]

