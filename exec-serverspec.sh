#!/bin/bash

cd serverspec
#�e�X�g���ʂ��Ȃ��e�X�g�R�[�h
bundle exec rspec spec/localhost/nginx_spec.rb

#�e�X�g���ʂ��e�X�g�R�[�h
#bundle exec rspec spec/localhost/ruby_spec.rb

#Docker�R���e�i�p
#bundle exec rspec spec/docker_nginx_spec.rb
