#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-cococostaricapay/cococostaricad-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/cococostaricad docker/bin/
cp $BUILD_DIR/src/cococostarica-cli docker/bin/
cp $BUILD_DIR/src/cococostarica-tx docker/bin/
strip docker/bin/cococostaricad
strip docker/bin/cococostarica-cli
strip docker/bin/cococostarica-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
