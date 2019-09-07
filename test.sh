#!/bin/bash

SCRIPT_DIR=$(dirname $(readlink -f $0))

cd ${SCRIPT_DIR}/so && make

cd ${SCRIPT_DIR}/bin/test_so_c && make

cd ${SCRIPT_DIR}/bin/test_so_cpp && make

export LD_LIBRARY_PATH=${SCRIPT_DIR}/so:$LD_LIBRARY_PATH
ldconfig

cd ${SCRIPT_DIR}/bin/test_so_c && ./test_so_c

cd ${SCRIPT_DIR}/bin/test_so_cpp && ./test_so_cpp
