FROM    alpine:3.12

#update before install
RUN apk update
RUN apk upgrade

#supervisor
RUN apk add supervisor
COPY ./supervisord.conf   /etc/supervisord.conf

RUN apk add influxdb

RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir /etc/telegraf/
RUN ./usr/bin/telegraf -sample-config --input-filter docker --output-filter influxdb > /etc/telegraf/telegraf.conf

#RUN mkdir -p /var/lib/influxdb
#VOLUME	["var/lib/influxdb"]

EXPOSE  8086

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
