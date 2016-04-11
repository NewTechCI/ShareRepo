#!/bin/bash

#infrataster(helper共有のため両方に記述)
DOCKER_IP=`docker inspect --format '{{.NetworkSettings.IPAddress}}' newtech`
export DOCKER_IP
cd serverspec

bundle exec rspec spec/docker_nginx_spec.rb
