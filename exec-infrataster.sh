#!/bin/bash

#infrataster
DOCKER_IP=`docker inspect --format '{{.NetworkSettings.IPAddress}}' newtech`
export DOCKER_IP
cd serverspec

#Docker�R���e�i�p
bundle exec rspec spec/infrataster_spec.rb
