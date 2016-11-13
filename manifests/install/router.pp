# Class: sap::install::router
#
# This class install the package requirements for SAP Netweaver
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class sap::install::router {

  # SAP router packages
  package { $sap::params::package_saprouter:              ensure => installed; }
}
