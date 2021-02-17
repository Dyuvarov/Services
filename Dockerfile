FROM alpine:latest

#update before install
RUN apk update
RUN apk upgrade

#servisor
RUN apk add supervisor

#nginx install
RUN apk add nginx openssl openssh
RUN mkdir -p /run/nginx
RUN mkdir www

#configs
COPY srcs/nginx.conf /etc/nginx/
COPY srcs/supervisord.conf /etc/supervisord.conf

#openssl key
RUN openssl req -x509 -new -newkey rsa:2048 -nodes \
    -keyout /etc/ssl/private/privkey.key -out /etc/ssl/certs/cert.crt \
    -subj '/C=RU/ST=Tatarstan/L=Kazan/O=study/OU=no/CN=ugreyiro'

EXPOSE 80 443

#starting script
COPY ./srcs/nginx_start.sh /tmp/
RUN chmod +x /tmp/nginx_start.sh
CMD ["/tmp/nginx_start.sh"]

