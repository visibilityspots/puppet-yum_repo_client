# puppet-yum-repo-client module [![Build Status](https://travis-ci.org/visibilityspots/puppet-yum_repo_client.svg?branch=master)](https://travis-ci.org/visibilityspots/puppet-yum_repo_client)

A puppet-module which configures the [yum-repo-client](https://github.com/ImmobilienScout24/yum-repo-client)

The [generated](https://github.com/ImmobilienScout24/yum-repo-client#build-rpm) rpm package needs to be uploaded to an available repository so the puppet module can install it.

You could use for example my [packagecloud.io](https://packagecloud.io/visibilityspots/packages) repository which you can install on CentOS by:

```bash
$ curl https://packagecloud.io/install/repositories/visibilityspots/packages/script.rpm | sudo bash
```

Tested on a CentOS 6.5 machine using puppet 3.5.1 and ruby 1.8.7

## Options

```puppet
   $pkg_name    = defaults to 'yum-repo-client',
   $host        = defaults to 'localhost',
   $port        = defaults to '8080',
   $context     = defaults unset,
```

Most options are self explaining, the name of the package to install, the host and port where the yum-repo-server runs on and last but not least the context the app is deployed as in your jetty or tomcat server. By default yum-repo-server will be deployed as ROOT/ therefore you don't have to provide this option. Only if you for example deploy the app as yum-repo-server in your webapps directory you should declare the context.

## Example

To implement using the defaults or with hiera support:

```puppet
  node 'yum-repo-client' {
    include yum_repo_server
  }
```

For an implementation with custom values without hiera support:

```puppet
  node 'yum-repo-client' {
    class {
      'yum_repo_client':
        pkg_name => 'yum-repo-client',
        host     => 'localhost',
        port     => '8080',
        context  => 'yum-repo-server'
    }
  }
```
