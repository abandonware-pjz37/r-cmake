#!/bin/bash -e

set -x

./clean.sh

export R_LIBS_USER="`pwd`/_library"

mkdir "${R_LIBS_USER}"

R CMD build .
R CMD check foopack_0.0.1.tar.gz
R CMD INSTALL -l "${R_LIBS_USER}" foopack_0.0.1.tar.gz

R CMD BATCH mytest.R || echo "mytest failed"

echo "============ mytest.Rout ==============="
cat mytest.Rout
