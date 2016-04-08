#!/bin/bash

cd serverspec
ruby -v
#infrataster“±“ü—p
yum install -y libxml2 libxml2-devel libxslt libxslt-devel
bundle config build.nokogiri --use-system-libraties

rvm list known
#gem list net-ssh -ar
#bundle update
#cat Gemfile.lock
bundle install
#bundle update
