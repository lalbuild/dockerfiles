FROM alpine:3.6

RUN apk update && apk add --no-cache \
    bash \
    shadow \
    make \
    musl-dev \
    gcc \
    sudo

RUN useradd -ms /bin/bash lal -G wheel && \
    echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

VOLUME ["/home/lal/volume"]
