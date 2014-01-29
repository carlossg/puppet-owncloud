class owncloud::package::debian() {

  apt::key { 'owncloud':
    key        => 'BA684223',
    key_source => 'http://download.opensuse.org/repositories/isv:ownCloud:community/Debian_7.0/Release.key',
  } ->
  apt::source { 'owncloud':
    location    => 'http://download.opensuse.org/repositories/isv:/ownCloud:/community/Debian_7.0/',
    repos       => '',
    release     => '/',
    include_src => false,
    before      => Package['owncloud'],
  }

}
