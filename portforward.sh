#!/bin/bash
kubectl port-forward -n monitoring svc/grafana 6968:80 --address 0.0.0.0 &
GRAFANA_PID=$!
echo $GRAFANA_PID > /tmp/grafana_port_forward.pid

# Start port forwarding for Prometheus
kubectl port-forward -n monitoring svc/prometheus-server 6969:80 --address 0.0.0.0 &
PROMETHEUS_PID=$!
echo $PROMETHEUS_PID > /tmp/prometheus_port_forward.pid

echo "Port forwarding started with PIDs: Grafana - $GRAFANA_PID, Prometheus - $PROMETHEUS_PID"

