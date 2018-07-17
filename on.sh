#!/bin/bash
cf start todos-ui
cf start todos-api
cf start todos-query
cf start todos-restclient
cf start todos-cache
cf start todos-command
cf start todos-data
cf start todos-gateway
cf start cloud-index
cf start config-server