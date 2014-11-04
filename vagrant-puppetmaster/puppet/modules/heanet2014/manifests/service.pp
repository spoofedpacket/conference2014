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
      }

}
