require 'serverspec'

set :backend, :exec

[root@ip-10-10-1-43 spec]# cd localhost/
[root@ip-10-10-1-43 localhost]# cat nginx_spec.rb
require 'spec_helper'

describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end