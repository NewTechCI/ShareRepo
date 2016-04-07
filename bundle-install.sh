#!/bin/bash

cd serverspec
ruby -v
rvm list known
#gem list net-ssh -ar
bundle update
bundle install