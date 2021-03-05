#!/bin/bash

echo "minikube delete"
minikube delete
echo "minikube start"
minikube --vm-driver=virtualbox start
echo "eval $(minikube docker-env)"
eval $(minikube docker-env)
echo "minikube addons enable metallb"
minikube addons enable metallb
echo "kubectl apply -f srcs/configmap.yaml"
kubectl apply -f srcs/configmap.yaml
##############IMAGES##################
echo "docker build -t mysql_image srcs/mysql"
docker build -t mysql_image srcs/mysql
echo "docker build -t influxdb_image srcs/influxdb"
docker build -t influxdb_image srcs/influxdb
echo "docker build -t nginx_image srcs/nginx"
docker build -t nginx_image srcs/nginx
echo "docker build -t wp_image srcs/wordpress"
docker build -t wp_image srcs/wordpress
echo "docker build -t phpmyadmin_image srcs/phpmyadmin"
docker build -t phpmyadmin_image srcs/phpmyadmin
echo "docker build -t ftps_image srcs/ftps"
docker build -t ftps_image srcs/ftps
echo "docker build -t grafana_image srcs/grafana"
docker build -t grafana_image srcs/grafana
##############SERVICES#################
echo "kubectl apply -f srcs/mysql/mysql.yaml"
kubectl apply -f srcs/mysql/mysql.yaml
echo "kubectl apply -f srcs/influxdb/influxdb.yaml"
kubectl apply -f srcs/influxdb/influxdb.yaml
echo "kubectl apply -f srcs/nginx/nginx.yaml"
kubectl apply -f srcs/nginx/nginx.yaml
echo "kubectl apply -f srcs/wordpress/wp.yaml"
kubectl apply -f srcs/wordpress/wp.yaml
echo "kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml"
kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml
echo "kubectl apply -f srcs/ftps/ftps.yaml"
kubectl apply -f srcs/ftps/ftps.yaml
echo "kubectl apply -f srcs/grafana/grafana.yaml"
kubectl apply -f srcs/grafana/grafana.yaml
