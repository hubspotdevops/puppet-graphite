class graphite::carbon_cache {

  anchor { '::graphite::carbon_cache::begin':
    before => Class['::graphite::carbon_cache::config'],
  }

  class { '::graphite::carbon_cache::config':
    notify  => Class['::graphite::carbon_cache::service'],
  }

  class { '::graphite::carbon_cache::service':}

  anchor { '::graphite::carbon_cache::end':
    require => Class['::graphite::carbon_cache::service'],
  }

}
