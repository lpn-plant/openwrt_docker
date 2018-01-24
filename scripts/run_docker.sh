#!/bin/bash

usage() {
    echo $0 OPENWRT_DIR
}

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    usage
    exit 1
fi

OPENWRT_DIR="`realpath $1`"

ssh-add

docker run --rm -it \
    -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) \
    -e SSH_AUTH_SOCK=$SSH_AUTH_SOCK \
    -v "$OPENWRT_DIR":/home/builder/openwrt \
    openwrt_dev \
    bash
