#!/bin/bash
if [ -z "$1" ] && [ -z "$2" ]
then
    version=1.0.0.SNAP
else
    version=$1
fi
cd ..
./build.sh "todos-command" ${version}
./build.sh "todos-query" ${version}
./deploy.sh "todos-command" ${version} "todos-command"
./deploy.sh "todos-query" ${version} "todos-query"
cd part_5
