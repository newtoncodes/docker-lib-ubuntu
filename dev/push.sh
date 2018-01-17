#!/usr/bin/env bash

v="$1"

if [ "$v" = "" ] || [ "$v" = "16.04" ]; then
    docker push newtoncodes/ubuntu
    docker push newtoncodes/ubuntu:16.04
else
    docker push newtoncodes/ubuntu:${v}
fi
