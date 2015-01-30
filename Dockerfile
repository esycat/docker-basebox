FROM ubuntu:trusty

MAINTAINER "Eugene Janusov" <esycat@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# OS update
RUN apt-get update
RUN apt-get -qy upgrade

RUN apt-get -qy install \
    python-software-properties \
    software-properties-common \
    unzip

# OS clean up
RUN apt-get clean
RUN rm -rf /tmp/* /var/tmp/* /var/lib/apt/archive/* /var/lib/apt/lists/*

