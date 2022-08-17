#!/bin/bash -x

IMAGE=simple-apache:new
FILTER='first | .RootFS | .Layers | length'

echo "La imagen '$IMAGE' tiene" $(docker inspect ${IMAGE} | jq -r "${FILTER[@]}") "capas."
docker inspect simple-apache:new | jq .[0].RootFS