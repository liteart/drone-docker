#!/bin/sh
set -e

if [ -n "$PRIVATE_REPO_PULL_USER" -a -n "$PRIVATE_REPO_PULL_PASSWORD" -a -n "$PRIVATE_REPO_PULL_ADDRESS" ]; then
    echo "logging in to private docker registry..."
    docker login --username="$PRIVATE_REPO_PULL_USER" --password="$PRIVATE_REPO_PULL_PASSWORD" $PRIVATE_REPO_PULL_ADDRESS
fi

./usr/local/bin/dockerd-entrypoint.sh $@
