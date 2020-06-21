node default {
  file {'/root/README':
    ensure  => file,
    content => 'hello',
    owner   => 'root',
  }
}
