#!/bin/bash

kind create cluster
kubectl apply -f nginx-html.yaml
kubectl apply -f nginx-deployment.yaml
kubectl apply -f nginx-service.yaml
kubectl apply -f nginx-conf.yaml
sleep 30
echo "Testing"
curl http://172.18.0.2:30080
echo ""
