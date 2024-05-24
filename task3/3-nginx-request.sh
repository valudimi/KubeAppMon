#!/bin/bash

for i in `seq 1 20`; do curl -s http://172.18.0.2:30080 >> /dev/null; sleep 1; done
