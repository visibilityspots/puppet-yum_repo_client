# Class: yum_repo_client::config
#
# Class which configures the yum-repo-client service
class yum_repo_client::config {
  file { '/etc/yum-repo-client.yaml':
    content => template('yum_repo_client/yum-repo-client.yaml.erb'),
  }
}
