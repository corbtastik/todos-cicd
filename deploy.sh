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
    cf push ${app} --vars-file ./vars.yml --var app.route=${app_route}.${cf_domain}
    cd ../todos-cicd
}

source deploy.conf

if [ -z "$1" ] && [ -z "$2" ] && [ -z "$3" ]
then
    echo "Please enter app, version and route, for example:"
    echo "deploy.sh todos-api 1.0.0.SNAP todos-api"
    exit 1
fi

app=$1
version=$2
app_route=$3
cf_login
deploy