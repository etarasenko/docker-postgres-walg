#!/bin/sh
set -e

PG_TAG=$1
WALG_TAG=$2
TAG=$3
BUILD_OPTS=$4

IMAGE=docker.io/etarasenko/postgres-walg

docker build \
    --build-arg PG_TAG=$PG_TAG \
    --build-arg WALG_TAG=$WALG_TAG \
    --pull \
    --tag $IMAGE:$TAG \
    $BUILD_OPTS \
    .
