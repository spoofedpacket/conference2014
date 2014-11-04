class heanet2014::service { 
     
      package { 'unbound':
          ensure    => installed,
      }   

      service { 'unbound':
          ensure    => running,
          name      => unbound,
          hasstatus => false,
          enable    => true,
          require   => Package['unbound'],
          subscribe => File['/etc/unbound/unbound.conf'],
      }

      file { '/etc/unbound/unbound.conf':
             ensure  => present,
             content => template('heanet2014/unbound.conf.erb'),
      }

}
