#!/bin/bash
source ./pas-services.conf

DB_NAME='mydb'
for i in "$@"
do
case $i in
    -s=*|--service=*)
    PAS_DB_SERVICE="${i#*=}"
    shift # past argument=value
    ;;
    -p=*|--plan=*)
    PAS_DB_PLAN="${i#*=}"
    shift # past argument=value
    ;;
    --default)
    DEFAULT=YES
    shift # past argument with no value
    ;;
    *)
          # unknown option
    ;;
esac
done

# last arg is assumed to be DB_NAME
if [[ -n $1 ]]; then
    DB_NAME=$1
fi

echo "DB NAME = ${DB_NAME}"
echo "DB SERVICE = ${PAS_DB_SERVICE}"
echo "DB PLAN = ${PAS_DB_PLAN}"

cf create-service $PAS_DB_SERVICE $PAS_DB_PLAN $DB_NAME
