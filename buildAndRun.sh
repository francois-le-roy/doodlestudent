#!/bin/bash
cd api/
docker build -f src/main/docker/Dockerfile.jvm -t frn18/tlc:quarkus-back-jvm .
docker push frn18/tlc:quarkus-back-jvm
cd ../front
docker build -t frn18/tlc:bunkerized-nginx-front .
docker push frn18/tlc:bunkerized-nginx-front
cd ../
docker system prune -a -f
docker pull frn18/tlc:quarkus-back-jvm
docker pull frn18/tlc:bunkerized-nginx-front
docker-compose up -d
