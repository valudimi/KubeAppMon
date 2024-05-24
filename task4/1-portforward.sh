#!/bin/bash

kubectl port-forward -n monitoring svc/grafana 6968:80 --address 0.0.0.0
