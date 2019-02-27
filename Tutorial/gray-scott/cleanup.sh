#!/bin/bash

# Cmds: help  data  code  all
cmd=${1:-help}

fail=yes

if [ "x$cmd" == "xcode" -o "x$cmd" == "xall" ]; then
    echo "== cleanup code in build/"
    cd build
    make clean
    cd -
    fail=no
fi
if [ "x$cmd" == "xdata" -o "x$cmd" == "xall" ]; then
    echo "== cleanup data"
    rm -rf *.bp *.bp.dir 
    rm -rf *.h5 *.sst *_insitumpi_*
    rm -rf *.png *.pnm *.jpg
    fail=no
fi


if [ "x$cmd" == "xhelp" -o "x$cmd" == "xh" -o "$fail" == "yes" ]; then
    echo "./cleanup.sh   [ data | code | all ]"
fi

