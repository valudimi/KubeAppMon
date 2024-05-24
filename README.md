# Kubernetes application monitoring

This project covers the implementation of a Kubernetes cluster that includes deployments of monitoring applications (Grafana, Prometheus) targeting an nginx server.

## Usage
For each task, you will find a set of scripts and, sometimes, yaml files. The scripts are ordered via a number at the beginning. Run each script, starting from the one that begins with 0, ending with the highest number.

For example:

```
cd task1
./0-setup.sh
./1-test.sh
```

## Tasks
The tasks are organised as follows:

### Task 1
Kubernetes cluster creation and nginx server deployment.

### Task 2
Deploy and expose Prometheus exporter as a service.

### Task 3
Deploy Prometheus via Helm and configure it. Test via queries.

### Task 4
Deploy Grafana via Helm and configure it. In the UI, I added `http://prometheus-server` as a data source and [I configured this dashboard](https://github.com/nginxinc/nginx-prometheus-exporter/tree/main/grafana).

### Task 5
Perform a basic denial of service attack on the nginx server as a learning experience (i.e. to see how the monitoring apps work).
