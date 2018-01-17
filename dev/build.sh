#!/usr/bin/env bash

dir=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
v="$1"

if [ "$v" = "" ] || [ "$v" = "16.04" ]; then
    cd ${dir}/../16.04 && docker build -t newtoncodes/ubuntu .
    cd ${dir}/../16.04 && docker build -t newtoncodes/ubuntu:16.04 .
else
    cd ${dir}/../${v} && docker build -t newtoncodes/ubuntu:${v} .
fi
