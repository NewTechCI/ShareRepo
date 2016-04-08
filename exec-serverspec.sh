#!/bin/bash

#infrataster
#docker inspect --format '{{.NetworkSettings.IPAddress}}' newtech

#DOCKER_IP=`docker inspect --format '{{.NetworkSettings.IPAddress}}' newtech`
echo $DOCKER_IP
cd serverspec
#テストが通らないテストコード
#bundle exec rspec spec/localhost/nginx_spec.rb

#テストが通るテストコード
#bundle exec rspec spec/localhost/ruby_spec.rb

#Dockerコンテナ用
bundle exec rspec spec/docker_nginx_spec.rb
bundle exec rspec spec/infrataster_spec.rb
