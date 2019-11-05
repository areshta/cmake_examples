#! /bin/bash
THIS_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
TMP_DIR="${THIS_DIR}/../tmp"
SRC_DIR="${THIS_DIR}/../src"
PRJ_DIR="${THIS_DIR}/../"

#cmake "${SRC_DIR}"  -DCMAKE_INSTALL_PREFIX="${PRJ_DIR}" -DCMAKE_VERBOSE_MAKEFILE="on" -B"${TMP_DIR}" --trace
cmake "${SRC_DIR}"  -DCMAKE_INSTALL_PREFIX="${PRJ_DIR}" -DCMAKE_VERBOSE_MAKEFILE="on" -B"${TMP_DIR}"

pushd "${TMP_DIR}"
make install
popd


