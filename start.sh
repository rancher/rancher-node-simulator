#!/bin/bash

: ${IMAGE:=rancher/agent}

if [ $# = 0 ]; then
    echo "URL is required"
    exit 1
fi

wrapdocker
docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock ${IMAGE} $1

while sleep 1; do
    docker logs -f rancher-agent
done
