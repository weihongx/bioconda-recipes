#!/bin/bash

export CFLAGS="-I$PREFIX/include -I${SRC_DIR}/include"
export LDFLAGS="-L$PREFIX/lib"
export CPATH=${PREFIX}/include:${SRC_DIR}/include

export CXXFLAGS="$CXXFLAGS -std=c++11 -I${PREFIX}/include"
export CXX_FLAGS="${CXX_FLAGS} -std=c++11 -I${PREFIX}/include"

make
make test
cp libStatGen*.a ${PREFIX}/lib

