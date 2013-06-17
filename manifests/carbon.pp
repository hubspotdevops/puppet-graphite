# = Class: graphite::carbon
#
# Install carbon and enable carbon.
#
# == Actions:
#
# Installs the carbon package and enables the carbon service.
#
# == Todo:
#
# * Update documentation
#
class graphite::carbon {
  
  anchor { '::graphite::carbon::begin':
    before => Class['::graphite::carbon::package'],
  }

  anchor { '::graphite::carbon::end':
    require => Class['::graphite::carbon::package'],
  }

  class{'::graphite::carbon::package':
  
  }

}

