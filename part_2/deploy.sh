#!/bin/bash
if [ -z "$1" ]
then
    version=1.0.0.SNAP
else
    version=$1
fi
cd ..
source deploy.conf
./build.sh "config-server" ${version}
./build.sh "cloud-index" ${version}
./deploy.sh "config-server" ${version} ${cf_config_server_route}
./deploy.sh "cloud-index" ${version} ${cf_cloud_index_route}
cd part_2
