#!/bin/bash

helm upgrade prometheus prometheus-community/prometheus --namespace monitoring -f values.yaml
