#!/bin/bash

kubectl get pod exporter-8668d74b9b-6kfh4 --template='{{(index (index .spec.containers 0).ports 0).containerPort}}{{"\n"}}'
kubectl port-forward -n monitoring svc/prometheus-server 6969:80 --address 0.0.0.0
