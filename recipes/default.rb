#
# Cookbook:: meetup
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Service docker installed, enabled and running
docker_service 'default' do
  action [:create, :start]
end

# Nginx container image
include_recipe 'docker_compose::installation'

directory '/srv/docker/hello/html' do
  recursive true
end

cookbook_file '/srv/docker/hello/docker-compose.yml' do
  source 'docker-compose.yml'
  notifies :up, 'docker_compose_application[nginx]', :delayed
end

docker_compose_application 'nginx' do
  action :up
  compose_files ['/srv/docker/hello/docker-compose.yml']
end

# Serve html page containing Hello World
cookbook_file '/srv/docker/hello/html/index.html' do
  source 'index.html'
end
