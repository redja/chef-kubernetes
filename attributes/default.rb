default[:kubernetes][:databag]                        = 'kubernetes'
default[:kubernetes][:version]                        = 'v1.3.6'
default[:kubernetes][:image]                          = 'gcr.io/google_containers/hyperkube'
default[:kubernetes][:interface]                      = 'eth1'
default[:kubernetes][:register_as]                    = 'ip'
default[:kubernetes][:sdn]                            = 'weave'
default[:kubernetes][:master]                         = '127.0.0.1'
default[:kubernetes][:cluster_name]                   = 'kubernetes'
default[:kubernetes][:cluster_dns]                    = '10.222.222.222'
default[:kubernetes][:cluster_domain]                 = 'kubernetes.local'
default[:kubernetes][:kubeconfig]                     = '/etc/kubernetes/kubeconfig.yaml'
default[:kubernetes][:tls_cert_file]                  = '/etc/kubernetes/ssl/apiserver.pem'
default[:kubernetes][:tls_private_key_file]           = '/etc/kubernetes/ssl/apiserver-key.pem'
default[:kubernetes][:client_ca_file]                 = '/etc/kubernetes/ssl/ca.pem'
default[:kubernetes][:service_account_key_file]       = '/etc/kubernetes/ssl/apiserver-key.pem'
default[:kubernetes][:token_auth_file]                = '/etc/kubernetes/tokens/known_tokens.csv'
default[:kubernetes][:cloud_config]                   = ''
default[:kubernetes][:cloud_provider]                 = ''
default[:kubernetes][:docker]                         = 'unix:///var/run/docker.sock'
default[:kubernetes][:api][:bind_address]             = '0.0.0.0'
default[:kubernetes][:api][:insecure_bind_address]    = '127.0.0.1'
default[:kubernetes][:api][:insecure_port]            = 8080
default[:kubernetes][:api][:secure_port]              = 8443
default[:kubernetes][:api][:service_cluster_ip_range] = '10.222.0.0/16'
default[:kubernetes][:api][:admission_control]        = ['NamespaceLifecycle', 'LimitRanger', 'ServiceAccount', 'ResourceQuota']
default[:kubernetes][:api][:runtime_config]           = ['extensions/v1beta1=true','extensions/v1beta1/thirdpartyresources=true']
default[:kubernetes][:kubelet][:client_certificate]   = '/etc/kubernetes/ssl/node.pem'
default[:kubernetes][:kubelet][:client_key]           = '/etc/kubernetes/ssl/node-key.pem'
default[:kubernetes][:md5][:kubelet]                  = 'fb783ae5bbc8d757aa382b006724243e'
default[:kubernetes][:md5][:kubectl]                  = 'bbf2801d77cf10c1fa708f699606e5e2'
default[:kubernetes][:dashboard][:version]            = 'v1.1.1'
