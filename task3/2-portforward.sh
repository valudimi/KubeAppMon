#!/bin/bash

kubectl port-forward -n monitoring svc/prometheus-server 6969:80 --address 0.0.0.0
