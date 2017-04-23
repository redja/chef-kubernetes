default['kubernetes']['roles']['master']                    = 'kubernetes_master'
default['kubernetes']['roles']['node']                      = 'kubernetes_node'
default['kubernetes']['install_via']                        = 'systemd_units' # other possible values are: static_pods, upstart (only for kubelet and kube-proxy for now)
default['kubernetes']['databag']                            = 'kubernetes'
default['kubernetes']['version']                            = 'v1.6.2'
default['kubernetes']['image']                              = 'gcr.io/google_containers/hyperkube'
default['kubernetes']['interface']                          = 'eth1'
default['kubernetes']['register_as']                        = 'ip'
default['kubernetes']['use_sdn']                            = true
default['kubernetes']['sdn']                                = 'weave'
default['kubernetes']['master']                             = '127.0.0.1'
default['kubernetes']['cluster_name']                       = 'kubernetes'
default['kubernetes']['cluster_dns']                        = '10.222.222.222'
default['kubernetes']['cluster_domain']                     = 'kubernetes.local'
default['kubernetes']['use_cluster_dns_systemwide']         = false
default['kubernetes']['ssl']['ca']['public_key']            = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['ssl']['ca']['private_key']           = '/etc/kubernetes/ssl/ca-key.pem'
default['kubernetes']['ssl']['apiserver']['public_key']     = '/etc/kubernetes/ssl/apiserver.pem'
default['kubernetes']['ssl']['apiserver']['private_key']    = '/etc/kubernetes/ssl/apiserver-key.pem'
default['kubernetes']['ssl']['proxy']['public_key']         = '/etc/kubernetes/ssl/proxy.pem'
default['kubernetes']['ssl']['proxy']['private_key']        = '/etc/kubernetes/ssl/proxy-key.pem'
default['kubernetes']['kubeconfig']                         = '/etc/kubernetes/kubeconfig.yaml'
default['kubernetes']['tls_cert_file']                      = '/etc/kubernetes/ssl/apiserver.pem'
default['kubernetes']['tls_private_key_file']               = '/etc/kubernetes/ssl/apiserver-key.pem'
default['kubernetes']['client_ca_file']                     = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['ca_key_file']                        = '/etc/kubernetes/ssl/ca-key.pem'
default['kubernetes']['service_account_key_file']           = '/etc/kubernetes/ssl/apiserver-key.pem'
default['kubernetes']['cluster_signing_cert_file']          = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['cluster_signing_key_file']           = '/etc/kubernetes/ssl/ca-key.pem'
default['kubernetes']['token_auth']                         = false
default['kubernetes']['token_auth_file']                    = '/etc/kubernetes/known_tokens.csv'
default['kubernetes']['cloud_config']                       = ''
default['kubernetes']['cloud_provider']                     = ''
default['kubernetes']['docker']                             = 'unix:///var/run/docker.sock'
default['kubernetes']['api']['bind_address']                = '0.0.0.0'
default['kubernetes']['api']['insecure_bind_address']       = '127.0.0.1'
default['kubernetes']['api']['insecure_port']               = 8080
default['kubernetes']['api']['secure_port']                 = 8443
default['kubernetes']['api']['service_cluster_ip_range']    = '10.222.0.0/16'
default['kubernetes']['api']['admission_control']           = %w(NamespaceLifecycle LimitRanger ServiceAccount ResourceQuota)
default['kubernetes']['api']['runtime_config']              = %w(rbac.authorization.k8s.io/v1alpha1)
default['kubernetes']['api']['storage_backend']             = 'etcd2' # Other possible values: 'etcd3'
default['kubernetes']['api']['storage_media_type']          = 'application/json' # Other values: 'application/vnd.kubernetes.protobuf'
default['kubernetes']['audit']['enabled']                   = true
default['kubernetes']['audit']['log_file']                  = '/var/log/kubernetes/audit.log'
default['kubernetes']['audit']['maxbackup']                 = 3
default['kubernetes']['kubelet']['client_certificate']      = '/etc/kubernetes/ssl/node.pem'
default['kubernetes']['kubelet']['client_key']              = '/etc/kubernetes/ssl/node-key.pem'
default['kubernetes']['kubelet']['image_gc_low_threshold']  = '70'
default['kubernetes']['kubelet']['image_gc_high_threshold'] = '80'
default['kubernetes']['kubelet']['cadvisor_port']           = 0
default['kubernetes']['kubelet']['verbosity']               = 2
default['kubernetes']['kubelet']['register_node']           = 'true'
default['kubernetes']['md5']['apiserver']                   = '5a24975398aa6a912695413b8acb65a8'
default['kubernetes']['md5']['controller-manager']          = '82ba6120de2a37d3bbd84e8e2e6f2881'
default['kubernetes']['md5']['proxy']                       = '7e9fc4499ced8a0514f9403f8ffddfd7'
default['kubernetes']['md5']['scheduler']                   = '61551485f6f21737288567d9390634eb'
default['kubernetes']['md5']['kubectl']                     = 'a18fca02e716399aac134352862f6166'
default['kubernetes']['md5']['kubelet']                     = '1c15b270347b23a6d3d05957deb14a1a'
default['kubernetes']['dashboard']['version']               = 'v1.6.0'
default['kubernetes']['addon_manager']['version']           = 'v6.4-beta.1'
default['kubernetes']['multimaster']['access_via']          = 'haproxy' # other possible values are: direct, dns
default['kubernetes']['multimaster']['haproxy_url']         = '127.0.0.1'
default['kubernetes']['multimaster']['haproxy_port']        = 6443
default['kubernetes']['multimaster']['dns_name']            = ''
