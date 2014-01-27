class owncloud() inherits owncloud::params {

  case $::operatingsystem {
    # centos,fedora,rhel,redhat: {}
    debian,ubuntu: {
      class { 'owncloud::package::debian': }
    }
    default: {
      fail("Module ${module_name} is not supported on ${::operatingsystem}")
    }
  }

  package { 'owncloud':
    ensure => present,
  } ->
  service { 'owncloud':
    enable => true,
    ensure => running,
  }

}
