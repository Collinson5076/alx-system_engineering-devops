# using puppet to create a file in /tmp

file {'web-001':
  path    => 'tmp/school/',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
}
