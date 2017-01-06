#! /bin/bash
git clone "https://github.com/google/brotli"
cd brotli
mkdir out && cd out && ../configure-cmake && make
make test
make install
