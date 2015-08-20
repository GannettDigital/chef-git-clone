#
# Cookbook Name:: one-nation
# Recipe:: install
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
directory "/usr/share/nginx/html/" do
  recursive true
  action :delete
end

file "/etc/nginx/sites-enabled/000-default" do
  action :delete
end

git "/usr/share/nginx/" do
    repository "git://github.com/GannettDigital/one-nation.git"
    reference "master"
    destination "/usr/share/nginx/html"
    action :sync
end

service "nginx" do
  action :restart
end
