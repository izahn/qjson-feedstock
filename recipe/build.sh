#!/bin/bash

[[ -d build ]] || mkdir build
cd build/

cmake \
    -D CMAKE_INSTALL_PREFIX=$PREFIX \
    $SRC_DIR

make
# No "make check" available
make install
