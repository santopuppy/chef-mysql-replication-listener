#
# Cookbook Name:: chef-mysql_replication_listener
# Recipe:: default
#
# Copyright (C) 2014 Lester Celestial
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'git'
include_recipe "cmake"
include_recipe "build-essential"

package "libssl-dev"
package "libboost-thread-dev"
package "libboost-system-dev"

git "#{Chef::Config[:file_cache_path]}/mysql-replication-listener" do
  repository node['listener']['git_repository']
  reference node['listener']['git_revision']
  action :sync
end

bash "install_mysql-replication-listener" do
  cwd "#{Chef::Config[:file_cache_path]}/mysql-replication-listener"
  code <<-EOH
    cmake .
    make
    sudo make install
  EOH
  not_if { ::File.exists?("/usr/local/lib/libreplication.so") }
end