#! /bin/bash

helm repo add podinfo https://stefanprodan.github.io/podinfo

helm upgrade --install --wait frontend \
--namespace podinfo \
--create-namespace
--set replicaCount=2 \
--set backend=http://backend-podinfo:9898/echo \
podinfo/podinfo