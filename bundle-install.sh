#!/bin/bash

cd serverspec
ruby -v
#infrataster�����p
#apt-get install -y libxml2 libxml2-devel libxslt libxslt-devel
bundle config build.nokogiri --use-system-libraties

#debug�p
#comment
#rvm list known
bundle install
#bundle update
