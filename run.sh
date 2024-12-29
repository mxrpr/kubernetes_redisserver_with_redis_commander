#!/bin/sh

# make sure we delete the prevoius instances - not mandatory
kubectl delete all --all -n default
# deploy redis server
kubectl apply -f redis_server_deployment.yaml
# deploy redis commander
kubectl apply -f redis_commander_deployment.yaml
# list out what has been deployed
kubectl get all
