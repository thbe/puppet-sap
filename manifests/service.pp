# Class: sap::service
#
# This class contain the service configuration for SAP Netweaver
#
# Parameters:   This class has no parameters
#
# Actions:      This class has no actions
#
# Requires:     This class has no requirements
#
# Sample Usage:
#
class sap::service {
  # SAP Netweaver service configuration
  service { $sap::params::service_uuidd:
    ensure  => 'running',
    enable  => true,
    require => Package[$sap::params::package_uuidd];
  }

  if $sap::cloudconnector {
    include sap::service::cloudconnector
  }

  if $sap::router {
    include sap::service::router
  }
}
