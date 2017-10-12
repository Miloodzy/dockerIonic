#!/bin/bash

docker stop $(docker ps -q)

docker build -t $1 .
 
docker run -d --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 8100:8100 $1

