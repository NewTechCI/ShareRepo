#!/bin/bash

cd serverspec
#テストが通らないテストコード
#bundle exec rspec spec/localhost/nginx_spec.rb

#テストが通るテストコード
bundle exec rspec spec/localhost/ruby_spec.rb
