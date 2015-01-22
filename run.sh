#!/bin/bash -e

set -x

./clean.sh

export R_LIBS_USER="`pwd`/_library"

mkdir "${R_LIBS_USER}"

ls -la

R CMD build .
R CMD check foopack_0.0.1.tar.gz || { cat foopack.Rcheck/00install.out && exit 1; }

R CMD INSTALL -l "${R_LIBS_USER}" foopack_0.0.1.tar.gz

FAILED=0

R CMD BATCH mytest.R || FAILED=1

echo "============ mytest.Rout ==============="
cat mytest.Rout

exit $FAILED
