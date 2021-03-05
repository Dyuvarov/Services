FROM alpine:3.12

#update before install
RUN apk update
RUN apk upgrade

#nginx
RUN apk add nginx
RUN mkdir -p /run/nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

#php
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli
RUN apk add php7-zlib php7-curl php7-mbstring php7-json php7-session

#Wordpress
ADD  https://wordpress.org/latest.tar.gz .
RUN tar -xzvf latest.tar.gz
RUN mv wordpress /var/www/
RUN rm -rf latest.tar.gz
COPY wp-config.php wordpress /var/www/wordpress/wp-config.php

#start
COPY start.sh /tmp/
RUN chmod +x /tmp/start.sh
CMD ["/tmp/start.sh"]

EXPOSE 5050
