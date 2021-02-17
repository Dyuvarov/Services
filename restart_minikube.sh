#!/bin/bash
echo "minikube delete"
minikube delete
echo "minikube start"
minikube start
echo "eval $(minikube docker-env)"
eval $(minikube docker-env)
echo "docker build -t nginx_image ."
docker build -t nginx_image .
echo "minikube addons enable metallb"
minikube addons enable metallb
echo "kubectl apply -f srcs/configmap.yaml"
kubectl apply -f srcs/configmap.yaml
echo "kubectl apply -f srcs/nginx.yaml"
kubectl apply -f srcs/nginx.yaml
echo "kubectl get svc"
kubectl get svc
echo "kubectl get deploy"
kubectl get deploy
