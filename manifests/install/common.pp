# Class: sap::install::common
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
class sap::install::common {

  # Common packages
  package { $sap::params::package_uuidd:         ensure => installed; }
}
