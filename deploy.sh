#!/bin/bash
cf_login() {
    echo "== Logging into PAS ==========================================="
    cf login \
    -a=${cf_api} \
    -s=${cf_space} \
    -o=${cf_org} \
    -u=${cf_user} \
    -p=${cf_pass} \
    --skip-ssl-validation
}

deploy() {
    echo "== Deploying ${app}-${version} ================================"    
    cd ../${app}
    cf push ${app} --vars-file ./vars.yml
    cd ../todos-cicd
}

source deploy.conf

if [ -z "$1" ] && [ -z "$2" ]
then
    echo "Please enter app and version, for example:"
    echo "deploy.sh todos-api 1.0.0.SNAP"
    exit 1
fi

app=$1
version=$2
cf_login
deploy