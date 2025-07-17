#!/bin/bash

echo "Removing all resources"
docker rm -f $(docker ps -aq)
docker rmi -f $(docker images -q)
docker network prune -f 
docker builder prune -a -f

docker compose build --no-cache
docker compose up -d
