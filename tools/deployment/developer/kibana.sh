#!/bin/bash

: ${OSH_PATH:="../openstack-helm"}

helm upgrade --install kibana ./kibana \
  --namespace=osh-infra

${OSH_PATH}/tools/deployment/common/wait-for-pods.sh openstack
