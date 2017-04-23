#
# Cookbook Name:: kubernetes
# Recipe:: network
#
# Author:: Maxim Filatov <bregor@evilmartians.com>
#

require 'resolv'

include_recipe 'network_interfaces'

if node['kubernetes']['use_cluster_dns_systemwide']
  nameservers = Resolv::DNS::Config.new.lazy_initialize.nameserver_port.map(&:first)
  nameservers = Array(node['kubernetes']['cluster_dns']) + nameservers
  nameservers.uniq!
  network_interfaces 'lo' do
    custom "dns-nameservers" => nameservers.join(' ')
  end
end

network_interfaces node['kubernetes']['interface'] do
  post_up "/sbin/ip route replace #{node['kubernetes']['api']['service_cluster_ip_range']} dev #{node['kubernetes']['interface']}"
end
