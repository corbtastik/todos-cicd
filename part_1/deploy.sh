#!/bin/bash
if [ -z "$1" ] && [ -z "$2" ]
then
    version=1.0.0.SNAP
else
    version=$1
fi
cd ..
./build.sh "todos-gateway" ${version}
./build.sh "todos-api" ${version}
./deploy.sh "todos-gateway" ${version}
./deploy.sh "todos-api" ${version}
./deploy.sh "todos-ui" ${version}
cd part_1
