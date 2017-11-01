FROM ubuntu:xenial

RUN apt-get update && apt-get install -y \
  cmake \
  curl \
  file \
  git \
  g++ \
  python \
  make \
  nano \
  ca-certificates \
  xz-utils \
  musl-tools \
  pkg-config \
  apt-file \
  sudo \
  xutils-dev \
  --no-install-recommends && \
  rm -rf /var/lib/apt/lists/*

# Compile C libraries with musl-gcc
ENV SSL_VER=1.0.2l \
    CURL_VER=7.56.0 \
    CC=musl-gcc \
    PREFIX=/usr/local \
    PATH=/usr/local/bin:$PATH \
    PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

RUN curl -sL http://www.openssl.org/source/openssl-$SSL_VER.tar.gz | tar xz && \
    cd openssl-$SSL_VER && \
    ./Configure no-shared --prefix=$PREFIX --openssldir=$PREFIX/ssl no-zlib linux-x86_64 -fPIC && \
    make depend 2> /dev/null && make -j$(nproc) && make install && \
    cd .. && rm -rf openssl-$SSL_VER

RUN curl https://curl.haxx.se/download/curl-$CURL_VER.tar.gz | tar xz && \
    cd curl-$CURL_VER && \
    ./configure --enable-shared=no --enable-static=ssl --enable-optimize --prefix=$PREFIX \
      --with-ca-path=/etc/ssl/certs/ --with-ca-bundle=/etc/ssl/certs/ca-certificates.crt --without-ca-fallback && \
    make -j$(nproc) && make install && \
    cd .. && rm -rf curl-$CURL_VER

RUN useradd -ms /bin/bash lal -G sudo && \
    echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER lal
WORKDIR  /home/lal
ENV HOME=/home/lal
# Set up our path to include our Rust toolchain
ENV PATH=$HOME/.cargo/bin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN curl -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable
RUN rustup target add x86_64-unknown-linux-musl
RUN echo "[build]\ntarget = \"x86_64-unknown-linux-musl\"" > /home/lal/.cargo/config


ENV SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt \
    SSL_CERT_DIR=/etc/ssl/certs \
    OPENSSL_LIB_DIR=$PREFIX/lib \
    OPENSSL_INCLUDE_DIR=$PREFIX/include \
    OPENSSL_DIR=$PREFIX \
    OPENSSL_STATIC=1

RUN chmod -R a+w $HOME
