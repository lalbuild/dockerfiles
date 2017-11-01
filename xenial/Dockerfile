FROM ubuntu:16.04

# Build dependencies
RUN apt-get -q update && apt-get -qy install \
    automake \
    build-essential \
    bash-completion \
    cmake \
    clang \
    clang-format \
    curl \
    fonts-freefont-ttf \
    hardening-includes \
    lcov \
    libboost-dev \
    libboost-system-dev \
    libboost-chrono-dev \
    libboost-timer-dev \
    libboost-filesystem-dev \
    libboost-regex-dev \
    libboost-random-dev \
    libboost-thread-dev \
    libboost-program-options-dev \
    libboost-date-time-dev \
    libboost-test-dev \
    libbsd-dev \
    libclang-dev \
    libcunit1-dev \
    libedit-dev \
    libeigen3-dev \
    libexpat1-dev \
    libjpeg62-dev \
    libldns-dev \
    libpulse-dev \
    libsdl1.2-dev \
    libunwind-dev \
    libpciaccess-dev \
    libssl-dev \
    libtool \
    libunbound-dev \
    libv4l-dev \
    libjansson-dev \
    libyaml-dev \
    locales \
    portaudio19-dev \
    python-mock \
    python-pip \
    python-virtualenv \
    python-yaml \
    python3.5-dev \
    python3-venv \
    uuid-dev \
    valgrind \
    xutils-dev \
    libfontconfig1-dev \
    libncurses-dev \
    yasm \
    libzip-dev

# Convenience tools
RUN apt-get -qy install \
    bats \
    cgdb \
    git \
    ipython \
    man-db \
    nano \
    rsync \
    silversearcher-ag \
    sudo \
    vim \
    wget \
    zsh

RUN locale-gen en_US.UTF-8 && \
    useradd -ms /bin/bash lal -G sudo && \
    echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    ln -s $(which llvm-symbolizer-3.8) /usr/bin/llvm-symbolizer && \
    touch /home/lal/.hushlogin

RUN chown lal /home/lal/.*

VOLUME ["/home/lal/volume"]
