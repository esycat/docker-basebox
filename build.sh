#!/bin/sh

REPO="esycat/ubuntu-base"
TAG="lts"

docker build -t $REPO:$TAG $(dirname $0) || exit $?
echo $REPO:$TAG image is ready.

