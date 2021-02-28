FROM alpine:3.12

#update before install
RUN apk update
RUN apk upgrade

#To use rc-service
RUN apk add openrc
RUN mkdir /run/openrc
RUN touch /run/openrc/softlevel

RUN apk add influxdb
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
COPY ./telegraf.conf /etc/

COPY start.sh /
RUN chmod +x /start.sh
CMD ["/start.sh"]

EXPOSE 8086
