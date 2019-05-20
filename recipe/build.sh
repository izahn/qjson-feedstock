#!/bin/bash

[[ -d build ]] || mkdir build
cd build/

# Missing g++ workaround.
ln -s ${GXX} g++ || true
chmod +x g++
export PATH=${PWD}:${PATH}

cmake \
    -D CMAKE_INSTALL_PREFIX=$PREFIX \
    $SRC_DIR

make
# No "make check" available
make install
