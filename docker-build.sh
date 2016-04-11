#!/bin/sh
set -xe

if [ -e ~/cache/docker-circleci.tar ] && [ $(md5sum Dockerfile | cut -d' ' -f1) = $(cat ~/cache/dockerfile.digest) ]
then
  docker load < ~/cache/docker-circleci.tar

else
  mkdir -p ~/cache
  #docker build -t newtechci/docker-circleci .
  docker build -t nnagasi/docker-circleci .
  md5sum Dockerfile | cut -d' ' -f1 > ~/cache/dockerfile.digest
  #docker save newtechci/docker-circleci > ~/cache/docker-circleci.tar
  docker save nnagasi/docker-circleci > ~/cache/docker-circleci.tar
fi
