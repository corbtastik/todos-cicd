#!/bin/bash
cf stop todos-ui
cf stop todos-api
cf stop todos-query
cf stop todos-restclient
cf stop todos-cache
cf stop todos-command
cf stop todos-data
cf stop todos-gateway
cf stop cloud-index
cf stop config-server