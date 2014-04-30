# puppet-yum-repo-client module

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
```

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
        port     => '8080'
    }
  }
```
