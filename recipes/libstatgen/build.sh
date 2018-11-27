#!/bin/bash

export CFLAGS="-I$PREFIX/include -I${SRC_DIR}/include"
export LDFLAGS="-L$PREFIX/lib"
export CPATH=${PREFIX}/include:${SRC_DIR}/include

make
make test
cp libStatGen*.a ${PREFIX}/lib

