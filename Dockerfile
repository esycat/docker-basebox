FROM ubuntu:xenial

MAINTAINER "Eugene Janusov" <esycat@gmail.com>

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

# OS update, then clean up
RUN apt-get -yq update && \
    apt-get -yq upgrade && \
    apt-get -yq --no-install-recommends install \
        python-software-properties \
        software-properties-common \
        apt-transport-https \
        aptitude \
        unzip && \
    apt-get clean && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/archive/* /var/lib/apt/lists/*
