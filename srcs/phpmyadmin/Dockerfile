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


#PHPMyAdmin install
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz
RUN tar -xzvf phpMyAdmin-5.0.2-english.tar.gz
RUN mkdir -p /var/www/
RUN mv phpMyAdmin-5.0.2-english /var/www/phpmyadmin
RUN rm phpMyAdmin-5.0.2-english.tar.gz
COPY  config.inc.php /var/www/phpmyadmin

#start
COPY start.sh .
RUN chmod +x /start.sh
CMD ["/start.sh"]

EXPOSE 5000
