#!/bin/bash

#infrataster(helperを共有しているため両方に定義)
DOCKER_IP=`docker inspect --format '{{.NetworkSettings.IPAddress}}' newtech`
export DOCKER_IP
cd serverspec

bundle exec rspec spec/docker_nginx_spec.rb
