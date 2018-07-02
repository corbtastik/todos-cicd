#!/bin/bash
if [ -z "$1" ] && [ -z "$2" ]
then
    version=1.0.0.SNAP
else
    version=$1
fi
cd ..
./build.sh "todos-cache" ${version}
./deploy.sh "todos-cache" ${version}
cd part_4
