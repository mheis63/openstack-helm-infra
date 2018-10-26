#!/bin/bash

: ${OSH_PATH:="../openstack-helm"}

helm upgrade --install fluentd ./fluent-logging \
  --namespace=osh-infra

${OSH_PATH}/tools/deployment/common/wait-for-pods.sh openstack

helm status fluentd
