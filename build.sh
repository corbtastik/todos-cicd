#!/bin/bash
build() {
    echo "== Building ${app}-${version} ================================="
    cd ../${app}
    ./mvnw versions:set -DnewVersion=${version}
    ./mvnw clean install
    cd ../todos-cicd
}

if [ -z "$1" ] && [ -z "$2" ]
then
    echo "Please enter app and version, for example:"
    echo "build.sh todos-api 1.0.0.RELEASE"
    exit 1
fi

app=$1
version=$2
build