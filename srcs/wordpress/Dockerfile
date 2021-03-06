FROM alpine:3.12.3

RUN apk update
RUN apk upgrade
RUN apk add nginx
RUN apk add sudo
RUN apk add openssl
RUN apk add openrc
RUN apk add supervisor
RUN apk add wget
RUN apk add vim
RUN apk add nginx
RUN apk add php7
RUN apk add php7-fpm
RUN apk add php7-opcache
RUN apk add php7-gd
RUN apk add php7-iconv
RUN apk add php7-mysqli
RUN apk add php7-mbstring
RUN apk add php7-json
RUN apk add php7-session

#   wordpress
ADD https://wordpress.org/latest.tar.gz /
RUN tar xfz latest.tar.gz
RUN rm latest.tar.gz
RUN mv wordpress /var/www/
ADD wp-config.php /var/www/wordpress/wp-config.php

#   nginx
RUN mkdir -p /var/run/nginx
RUN rm etc/nginx/conf.d/default.conf
ADD nginx.conf etc/nginx/conf.d/

#   supervisord
RUN mkdir -p /var/run/php
ADD supervisord.conf /etc/supervisord.conf

EXPOSE 5050

# CMD nginx -g "daemon off;"
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

# FROM alpine:3.12
#
# #update before install
# RUN apk update
# RUN apk upgrade
#
# #supervisor
# RUN apk add supervisor
# COPY supervisord.conf /etc/supervisord.conf
#
# #nginx
# RUN apk add nginx
# RUN mkdir -p /run/nginx
# COPY nginx.conf /etc/nginx/conf.d/default.conf
#
# #php
# RUN apk add php7 php7-fpm php7-opcache php7-gd php7-iconv php7-mysqli
# RUN apk add php7-zlib php7-curl php7-mbstring php7-json php7-session
#
# #Wordpress
# ADD  https://wordpress.org/latest.tar.gz .
# RUN tar -xzvf latest.tar.gz
# RUN mv wordpress /var/www/
# RUN rm -rf latest.tar.gz
# COPY wp-config.php /var/www/wordpress/wp-config.php
#
# #start
# COPY start.sh /tmp/
# RUN chmod +x /tmp/start.sh
# CMD ["/tmp/start.sh"]
#
# EXPOSE 5050
