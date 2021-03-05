FROM alpine:3.12

#update before install
RUN apk update
RUN apk upgrade

#libc6
RUN apk add libc6-compat

#grafana
RUN wget https://dl.grafana.com/oss/release/grafana-7.3.6.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.3.6.linux-amd64.tar.gz
RUN rm grafana-7.3.6.linux-amd64.tar.gz
RUN mv grafana-7.3.6 grafana
COPY grafana.db /grafana/data/grafana.db

COPY start.sh /
RUN chmod +x /start.sh
CMD ["/start.sh"]

EXPOSE 3000
