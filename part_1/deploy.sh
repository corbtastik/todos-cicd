#!/bin/bash
if [ -z "$1" ]
then
    version=1.0.0.SNAP
else
    version=$1
fi
cd ..
source deploy.conf
./build.sh "todos-gateway" ${version}
./build.sh "todos-api" ${version}
./deploy.sh "todos-gateway" ${version} ${cf_todos_gateway_route}
./deploy.sh "todos-api" ${version} ${cf_todos_api_route}
./deploy.sh "todos-ui" ${version} ${cf_todos_ui_route}
cd part_1
