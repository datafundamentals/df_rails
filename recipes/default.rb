#
# Cookbook Name:: df_rails
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "df_rails::ruby_setup"

execute "sudo apt-get install libsqlite3-dev" do 
	action :run
end

gem_package "rails" do 
	action :install
end

apt_package "g++" do 
	action :install
end

apt_package "nodejs"

gem_package "unicorn" do 
	action :install
end
