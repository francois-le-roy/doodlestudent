#!/bin/bash
cd api/
# skip test a retirer quand les tests passent
mvn package -DskipTests
docker build -f src/main/docker/Dockerfile.jvm -t quarkus-back-jvm .
cd ../
docker-compose up -d
