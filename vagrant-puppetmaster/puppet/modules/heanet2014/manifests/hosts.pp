class heanet2014::hosts ( $custom_hosts_entry = "127.0.0.1" ) { 

   host { 'ip6-allnodes':
     ensure => 'present',
     ip     => 'ff02::1',
     target => '/etc/hosts',
   }

   host { 'ip6-allrouters':
     ensure => 'present',
     ip     => 'ff02::2',
     target => '/etc/hosts',
   }

   host { 'ip6-localnet':
     ensure => 'present',
     ip     => 'fe00::0',
     target => '/etc/hosts',
   }

   host { 'ip6-mcastprefix':
     ensure => 'present',
     ip     => 'ff00::0',
     target => '/etc/hosts',
   }

   host { 'localhost':
     ensure => 'present',
     ip     => '127.0.0.1',
     target => '/etc/hosts',
   }

   host { 'puppet.grahamgilbert.dev':
     ensure => 'present',
     ip     => '192.168.33.10',
     target => '/etc/hosts',
   }

   host { 'heanet2014':
     ensure => 'present',
     ip     => $custom_hosts_entry,
     target => '/etc/hosts',
   }

}
