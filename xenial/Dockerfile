FROM ubuntu:16.04

RUN apt-get -q update && apt-get -qy install \
    automake \
    build-essential \
    cmake \
    curl \
    libssl-dev \
    libtool \
    libyaml-dev \
    locales \
    uuid-dev \
    xutils-dev

RUN locale-gen en_US.UTF-8 && \
    useradd -ms /bin/bash lal -G sudo && \
    echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    touch /home/lal/.hushlogin

RUN chown lal /home/lal/.*

VOLUME ["/home/lal/volume"]
