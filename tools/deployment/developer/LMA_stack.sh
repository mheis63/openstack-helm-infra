#!/bin/bash

./tools/deployment/developer/elasticsearch.sh
./tools/deployment/developer/fluent-logging.sh
./tools/deployment/developer/kibana.sh

kubectl get jobs -n osh-infra --show-all
