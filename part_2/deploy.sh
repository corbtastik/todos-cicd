#!/bin/bash
if [ -z "$1" ] && [ -z "$2" ]
then
    version=1.0.0.SNAP
else
    version=$1
fi
cd ..
./build.sh "config-server" ${version}
# ./build.sh "cloud-index" ${version}
./deploy.sh "config-server" ${version} "config-srv"
# ./deploy.sh "cloud-index" ${version} "cloud-index"
cd part_2
