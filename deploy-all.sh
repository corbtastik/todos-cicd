#!/bin/bash
export GITHUB_TOKEN=
version=$1
./deploy.sh "cloud-index" ${version}
./deploy.sh "config-server" ${version}
./deploy.sh "todos-gateway" ${version}
./deploy.sh "todos-java" ${version}