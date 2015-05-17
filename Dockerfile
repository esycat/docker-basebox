FROM ubuntu:trusty

MAINTAINER "Eugene Janusov" <esycat@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# OS update
RUN apt-get -yq update
RUN apt-get -yq upgrade

RUN apt-get -yq --no-install-recommends install \
    python-software-properties \
    software-properties-common \
    apt-transport-https \
    aptitude \
    unzip

# OS clean up
RUN apt-get clean
RUN rm -rf /tmp/* /var/tmp/* /var/lib/apt/archive/* /var/lib/apt/lists/*

