class heanet2014::hosts-exported { 

   # Exported host resource
   @@host { $::fqdn:
     ip     => $::ipaddress,
   }

   # Collect and realise exported host resources
   Host <<| |>>

}
