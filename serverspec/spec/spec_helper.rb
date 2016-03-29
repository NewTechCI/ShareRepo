require 'docker'
require 'serverspec'


set :backend, :docker
set :docker_url, ENV["DOCKER_HOST"]
#set :docker_image, "newtechci/docker-circleci"

set :docker_image, "nnagasi/docker-circleci"

Excon.defaults[:ssl_verify_peer] = false
