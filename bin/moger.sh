#!/bin/bash

# moger CLI wrapper

set -e
echo "Here is my moger CLI"

IMAGE="moger"
DOCKER_EXTRA_ARGS=${DOCKER_EXTRA_ARGS:-""}


if [[ $OSTYPE =~ ^darwin ]]; then
    echo "Spawning moger CLI docker container"

    docker run --rm -it \
        -v $(pwd):/workspace \
        -v /var/run/dokcer.sock:/var/run/docker.sock \
        ${DOCKER_EXTRA_ARGS} ${IMAGE} $*
else
    echo "Unsupported OS version: ${OSTYPE}"
    exit 1
fi