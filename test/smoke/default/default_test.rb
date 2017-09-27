# # encoding: utf-8

# Inspec test for recipe meetup::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe service('docker') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe docker_image('nginx') do
  it { should exist }
end

describe command('curl http://localhost') do
  its('stdout') { should match(/Hello World/) }
end
