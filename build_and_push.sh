#!/bin/bash

IMAGE=${1:-quay.io/xymox/aap-ee-ocp4}
VERSION=${2:-0.0.3}

ansible-builder build --container-runtime podman --no-cache --prune-images -t ${IMAGE}:${VERSION} -v 3
# podman push ${IMAGE}:${VERSION}
