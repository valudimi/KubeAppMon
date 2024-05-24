#!/bin/bash

slowhttptest -c 50000 -i 5 -r 200 -t GET -u http://172.18.0.2:30080
