#!/bin/sh

REPO="esycat/ubuntu"
TAG=${1:-"lts"}

docker build -t $REPO:$TAG $(dirname $0) || exit $?
echo $REPO:$TAG image is ready.

