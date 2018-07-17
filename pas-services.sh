#!/bin/bash

create_services() {

    if [ -z "${SERVICE_REDIS_NAME}" ]; then
        echo -n 'Enter a name for the Redis service:'
        read -s SERVICE_REDIS_NAME
        echo
    fi

    cf create-service ${pas_service_redis} ${pas_service_redis_plan} ${SERVICE_REDIS_NAME}

    if [ -z "${SERVICE_RABBITMQ_NAME}" ]; then
        echo -n 'Enter a name for the RabbitMQ service:'
        read -s SERVICE_RABBITMQ_NAME
        echo
    fi    

    cf create-service ${pas_service_rabbitmq} ${pas_service_rabbitmq_plan} ${SERVICE_RABBITMQ_NAME}

    if [ -z "${SERVICE_MYSQL_NAME}" ]; then
        echo -n 'Enter a name for the MySQL service:'
        read -s SERVICE_MYSQL_NAME
        echo
    fi    

    cf create-service ${pas_service_mysql} ${pas_service_mysql_plan} ${SERVICE_MYSQL_NAME}
} 

main() {
    source pas.config

    if [ -z "$1" ] && [ -z "$2" ] && [ -z "$3" ]
    then
        echo "Please enter names for redis, rabbitmq and mysql:"
        echo "./pas-services.sh my-redis my-rabbitmq my-mysql"
        exit 1
    fi
    SERVICE_REDIS_NAME=$1
    SERVICE_RABBITMQ_NAME=$2
    SERVICE_MYSQL_NAME=$3
    
    create_services
}

main $@

