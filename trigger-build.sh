#!/bin/sh

set -eou pipefail

for t in 2 2.7 3 3.6 3.7 3.8; do
  echo "Send build request for Python ${t} to Docker Hub..."
  curl --silent \
    --request POST \
    --header "Content-Type:application/json" \
    --data "{\"dockerfile\":\"/$t\",\"source_name\":\"master\",\"source_type\":\"Branch\",\"docker_tag\":\"$t\"}" \
    --url "${DOCKER_HUB_TRIGGER_URL}" | jq .state
  echo
done
