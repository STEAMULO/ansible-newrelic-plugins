require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file('/opt/newrelic') do
  it { should exist }
  it { should be_directory }
end
