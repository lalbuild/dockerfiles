# lal demo environments
These are available in public.

## [alpine](https://hub.docker.com/r/clux/lal-alpine/tags/)
A miniature musl C toolchain with almost no dependencies. **CC=musl-gcc** at 6.3.0.

## [xenial](https://hub.docker.com/r/clux/lal-xenial/tags/)
An ubuntu toolchain for C++ with a few common dependencies. **CC=gcc-5**.

## [muslrust](https://hub.docker.com/r/clux/lal-muslrust/tags/)
A musl cross compilation environment for latest stable rust. It uses a modified version [clux/muslrust](https://github.com/clux/muslrust) with a `lal` user.

This allows you to `lal build lal`
