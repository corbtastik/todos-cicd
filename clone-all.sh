#!/bin/bash

# must be out of band first
#git clone git@github.com:corbtastik/todos-cicd.git ${TODOS_HOME}/todos-cicd

#TODOS_HOME=/Users/corbs/dev/github/todos-apps

while IFS= read -r line;
do
    echo "|$line|";
done < deploy.conf

#git@github.com:corbtastik/cloud-index.git

## declare an array variable
declare -a array=("one" "two" "three")

# get length of an array
arraylength=${#array[@]}

# use for loop to read all values and indexes
for (( i=0; i<${arraylength}; i++ ));
do
  echo $i " / " ${arraylength} " : " ${array[$i]}
done



#git clone ${GIT}/${REPO}.git ${TODOS_HOME}/${REPO}
# git clone git@github.com:corbtastik/config-repo.git ${TODOS_HOME}/config-repo
# git clone git@github.com:corbtastik/todos-config.git ${TODOS_HOME}/todos-config
# git clone git@github.com:corbtastik/vue-todos.git ${TODOS_HOME}/vue-todos
# git clone git@github.com:corbtastik/config-server.git ${TODOS_HOME}/config-server
# git clone git@github.com:corbtastik/todos-command.git ${TODOS_HOME}/todos-command
# git clone git@github.com:corbtastik/todos-cache.git ${TODOS_HOME}/todos-cache
# git clone git@github.com:corbtastik/todos-data.git ${TODOS_HOME}/todos-data
# git clone git@github.com:corbtastik/todos-java.git ${TODOS_HOME}/todos-java
# git clone git@github.com:corbtastik/todos-kotlin.git ${TODOS_HOME}/todos-kotlin
# git clone git@github.com:corbtastik/todos-gateway.git ${TODOS_HOME}/todos-gateway
# git clone git@github.com:corbtastik/todos-query.git ${TODOS_HOME}/todos-query
# git clone git@github.com:corbtastik/todos-reactor.git ${TODOS_HOME}/todos-reactor
# git clone git@github.com:corbtastik/todos-restclient.git ${TODOS_HOME}/todos-restclient
# git clone git@github.com:corbtastik/todos-sink.git ${TODOS_HOME}/todos-sink
# git clone git@github.com:corbtastik/todos-source.git ${TODOS_HOME}/todos-source
# git clone git@github.com:corbtastik/todos-webclient.git ${TODOS_HOME}/todos-webclient
# git clone git@github.com:corbtastik/todos-webflux.git ${TODOS_HOME}/todos-webflux
# git clone git@github.com:corbtastik/todos-webflux-router.git ${TODOS_HOME}/todos-webflux-router