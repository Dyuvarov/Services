#!/bin/bash
echo "kubectl delete services nginx-svc"
kubectl delete services nginx-svc
echo "kubectl delete deployment nginx-deployment"
kubectl delete deployment nginx-deployment
echo "docker build -t nginx_image ."
docker build -t nginx_image .
echo "kubectl apply -f srcs/nginx.yaml"
kubectl apply -f srcs/nginx.yaml
