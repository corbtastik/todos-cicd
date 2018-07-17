#!/bin/bash
# user running this script must be an OrgManager
if [ -z "$1" ] && [ -z "$2" ]
then
    echo "Please enter an Org & Space, for example:"
    echo "./pas-build.sh my-org my-space"
    exit 1
fi

create_org_space() {
    local cf_org=$1
    local cf_space=$2
    cf create-org $cf_org
    cf create-space $cf_space -o $cf_org
    cf target -o $cf_org -s $cf_space
}

main() {
    create_org_space $1 $2
}

main $1 $2