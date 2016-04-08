require 'docker'
require 'serverspec'
#infrataster
require 'rspec/json_matcher'
require 'infrataster/rspec'


set :backend, :docker
set :docker_url, ENV["DOCKER_HOST"]
#set :docker_image, "newtechci/docker-circleci"

set :docker_image, "nnagasi/docker-circleci"

Excon.defaults[:ssl_verify_peer] = false

#infrataster
RSpec.configuration.include RSpec::JsonMatcher
Infrataster::Server.define(
    :ex,
    printenv DOCKER_IP
)
