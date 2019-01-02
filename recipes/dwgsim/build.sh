#!/bin/bash
set -eox pipefail

(git clone http://github.com/samtools/samtools && cd samtools && git checkout 28391e5898804ce6b805016d8c676fdf61442eb3)

# These two environmental variables needed for a successful samtools build.
# https://bioconda.github.io/troubleshooting.html#zlib-errors
export LDFLAGS="-L$PREFIX/lib"
export CPATH=${PREFIX}/include

# This edit needed for a successful DWGSIM build.
# https://bioconda.github.io/troubleshooting.html#zlib-errors
sed -i "/^CFLAGS=/ s;#.*$;-I${PREFIX}\/include;" Makefile

cat Makefile

make LIBCURSES=-lncurses

mkdir -p $PREFIX/bin

cp dwgsim $PREFIX/bin
cp dwgsim_eval $PREFIX/bin

