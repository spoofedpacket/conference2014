class heanet2014::user { 

       group { 'heanet':
           ensure => present,
       }

       user { 'heanet':
           ensure     => present,
           home       => '/home/heanet',
           gid        => 'heanet',
           managehome => true,
           shell      => '/bin/bash',
           password   => '*',
           require    => Group['heanet'],
       }

}
