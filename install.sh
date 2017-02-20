#! /bin/bash
cd local/plugins/brotli
if [[ ! -e brotli ]]; then
    git clone "https://github.com/google/brotli" || exit "Git clone failed. Check that git is installed and you are connected to the internet."
    cd brotli
    mkdir out && cd out && ../configure-cmake && make
    make test
    make install
fi
