FROM alpine:3.6

RUN apk update && apk add --no-cache \
    bash \
    shadow \
    make \
    musl-dev \
    gcc \
    sudo

RUN adduser -u 1000 -D -G wheel -s /bin/bash lal && \
    echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

VOLUME ["/home/lal/volume"]
