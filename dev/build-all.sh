#!/usr/bin/env bash

dir=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

cd ${dir}/../16.04 && docker build -t newtoncodes/ubuntu .
cd ${dir}/../16.04 && docker build -t newtoncodes/ubuntu:16.04 .
cd ${dir}/../17.10 && docker build -t newtoncodes/ubuntu:17.10 .
cd ${dir}/../18.04 && docker build -t newtoncodes/ubuntu:18.04 .
