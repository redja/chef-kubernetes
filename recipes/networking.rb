#
# Cookbook Name:: kubernetes
# Recipe:: network
#
# Author:: Maxim Filatov <bregor@evilmartians.com>
#

include_recipe 'network_interfaces'

network_interfaces node['kubernetes']['interface'] do
  post_up "/sbin/ip route replace #{node['kubernetes']['api']['service_cluster_ip_range']} dev #{node['kubernetes']['interface']}"
end
