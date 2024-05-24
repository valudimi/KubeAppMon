#!/bin/bash

if [[ -f /tmp/grafana_port_forward.pid ]]; then
  GRAFANA_PID=$(cat /tmp/grafana_port_forward.pid)
  kill $GRAFANA_PID
  rm /tmp/grafana_port_forward.pid
  echo "Terminated Grafana port forwarding (PID $GRAFANA_PID)"
else
  echo "Grafana port forwarding PID file not found"
fi

if [[ -f /tmp/prometheus_port_forward.pid ]]; then
  PROMETHEUS_PID=$(cat /tmp/prometheus_port_forward.pid)
  kill $PROMETHEUS_PID
  rm /tmp/prometheus_port_forward.pid
  echo "Terminated Prometheus port forwarding (PID $PROMETHEUS_PID)"
else
  echo "Prometheus port forwarding PID file not found"
fi

