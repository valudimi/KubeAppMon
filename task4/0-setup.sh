#!/bin/bash

helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

helm install grafana grafana/grafana --namespace monitoring
echo -e "\n\nTesting if it worked:"
kubectl get all -n monitoring
