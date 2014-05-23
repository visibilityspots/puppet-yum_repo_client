# Class: yum_repo_client
#
# Initialization class for the yum_repo_client service
class yum_repo_client (
  $pkg_name     = $yum_repo_client::params::pkg_name,
  $host         = $yum_repo_client::params::host,
  $port         = $yum_repo_client::params::port,
  $context      = $yum_repo_client::params::context,
) inherits yum_repo_client::params {

  include yum_repo_client::install
  include yum_repo_client::config

  Class['yum_repo_client::install'] ->
  Class['yum_repo_client::config']
}
