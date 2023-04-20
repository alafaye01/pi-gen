#!/bin/bash
set -o pipefail
set -x
id -nG
sudo rm -rf deploy
mkdir -p deploy
sudo time ./build.sh 2>&1 | tee deploy/build-complete.log || sudo rm -rf work
# TODO Deal with nbd devices still connected or loop partitions still mounted

