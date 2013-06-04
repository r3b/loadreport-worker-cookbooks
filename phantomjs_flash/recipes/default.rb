#
# Cookbook Name:: phantomjs_flash
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "apt"
include_recipe "git"

%w{build-essential g++ openssl chrpath libssl-dev libfontconfig1-dev xvfb 
	libglib2.0-dev libx11-dev libxext-dev libfreetype6-dev libxcursor-dev 
	libxrandr-dev libxv-dev libxi-dev libgstreamermm-0.10-dev libgstreamermm-0.10-2 
	flashplugin-installer}.each do |pkg|
  package pkg do
    action :install
  end
end
