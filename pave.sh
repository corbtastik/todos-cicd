#!/bin/bash
redis="rediscloud"
redis_plan="100mb"
rabbitmq="cloudamqp"
rabbitmq_plan="bunny"
mysql="cleardb"
mysql_plan="boost"

my_redis_name="todos-cache"
my_rabbitmq_name="todos-messaging"
my_mysql_name="todos-data"

main() {
    cf create-service ${rabbitmq} ${rabbitmq_plan} ${my_rabbitmq_name}
    cf create-service ${redis} ${redis_plan} ${my_redis_name}
    cf create-service ${mysql} ${mysql_plan} ${my_mysql_name}
}

main $@