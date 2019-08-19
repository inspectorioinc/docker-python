#!/bin/sh

for t in 2 2.7 3 3.6 3.7; do
    curl --silent \
         --request POST \
         --header "Content-Type:application/json" \
         --data "{\"dockerfile\":\"/$t\",\"source_name\":\"master\",\"source_type\":\"Branch\",\"docker_tag\":\"$t\"}" \
         --url "${DOCKER_HUB_TRIGGER_URL}"
done
