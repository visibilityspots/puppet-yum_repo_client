# Class: yum_repo_client::install
#
# Installation of the yum-repo-client package
class yum_repo_client::install {
  package { $yum_repo_client::pkg_name :
    ensure  => 'installed'
  }
}
