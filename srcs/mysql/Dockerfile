FROM alpine:3.12

EXPOSE 3306

#update before install
RUN apk update
RUN apk upgrade

#to delete
RUN apk add vim

#To use rc-service
RUN apk add openrc
RUN mkdir /run/openrc
RUN touch /run/openrc/softlevel

#mariadb
RUN apk add mariadb mariadb-client
COPY mariadb-server.cnf /etc/my.cnf.d

COPY start.sh /start.sh
RUN chmod +x start.sh
CMD ["/start.sh"]
