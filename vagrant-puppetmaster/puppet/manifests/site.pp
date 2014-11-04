#import "classes/*"

node "client3.heanet2014.dev" {
     include heanet2014::user
     include heanet2014::package
     include heanet2014::service
     include heanet2014::hosts
     include heanet2014::hosts-exported
}
