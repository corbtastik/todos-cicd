#!/bin/bash
if [ -z "$1" ] && [ -z "$2" ]
then
    version=1.0.0.SNAP
else
    version=$1
fi
cd ..
./build.sh "todos-data" ${version}
./deploy.sh "todos-data" ${version} "todos-data"
cd part_3
