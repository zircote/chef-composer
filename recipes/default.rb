#
# Cookbook Name:: composer
# Recipe:: default
#
# Copyright 2012, Robert Allen
#

composer "/usr/local/bin" do
  action [:install, :update]
end

composer_project "/vagrant" do
  action [:install]
  dev true
  run_as "root"
end
