#
# Cookbook Name:: git-clone
# Recipe:: one-nation
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
git "/usr/share/nginx/html" do
    repository "git://github.com/GannettDigital/one-nation.git"
    reference "master"
    destination "."
    action :sync
end
