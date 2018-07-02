#!/bin/bash
version=$1
./build.sh cloud-index ${version}
./build.sh config-server ${version}
./build.sh todos-gateway ${version}
./build.sh todos-api ${version}
