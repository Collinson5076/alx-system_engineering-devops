#!/usr/bin/env bash
# making changes to config file using puppet

file {'/etc/ssh/ssh_config':
  ensure  => 'present',
}

file_line {'Turn off passwd auth':
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  match   => 'PasswordAuthentication yes',
  replace => 'true',
}

file_line {'Declare identity file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
  match  => '^IdentityFile',
}
