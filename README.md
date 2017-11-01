# lal demo environments
These are available in public.

## [xenial](https://hub.docker.com/r/clux/lal-xenial/tags/)
An ubuntu toolchain for C++ with a few common dependencies. **CC=gcc-5**
Comes with llvm4 and all its sanitizers.

## [muslrust](https://hub.docker.com/r/clux/lal-muslrust/tags/)
A musl cross compilation environment for latest stable rust. It uses a modified version [clux/muslrust](https://github.com/clux/muslrust) with a `lal` user.

This allows you to `lal build lal`