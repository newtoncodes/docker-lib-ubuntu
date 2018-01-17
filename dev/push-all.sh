#!/usr/bin/env bash

dir=$(dirname "$0")

docker push newtoncodes/ubuntu
docker push newtoncodes/ubuntu:16.04
docker push newtoncodes/ubuntu:17.10
docker push newtoncodes/ubuntu:18.04
