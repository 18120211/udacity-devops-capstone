#!/bin/bash

DOCKER_IMAGE=$1
COMMIT=$2
cd /home/ubuntu/project
sed 's/commit/${COMMIT}/g' nginx/template.html > nginx/index.html
docker build -t ${DOCKER_IMAGE} nginx/