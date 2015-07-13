user { 'harry':
  ensure     => present,
  uid        => '1000',
  shell      => '/bin/bash',
  home       => '/home/harry'
}

