#!/bin/bash

echo -e "-=-=-=-=-=-=-\nRunning kubectl get svc nginx\n-=-=-=-=-=-=-"
kubectl get svc nginx

echo -e "\n-=-=-=-=-=-=-\nRunning curl on http://172.18.0.2:30088/metrics\n-=-=-=-=-=-=-"
curl http://172.18.0.2:30088/metrics

echo -e "\n-=-=-=-=-=-=-\nRunning curl on http://172.18.0.2:30080/\n-=-=-=-=-=-=-"
curl http://172.18.0.2:30080
echo ""
