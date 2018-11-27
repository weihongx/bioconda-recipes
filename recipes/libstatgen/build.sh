#!/bin/bash

export CFLAGS="-I$PREFIX/include -I${SOURCE_DIR}/include"
export LDFLAGS="-L$PREFIX/lib"
export CPATH=${PREFIX}/include:${SOURCE_DIR}/include

make
make test
cp libStatGen*.a ${PREFIX}/lib

