# Class: sap::package::experimental
#
# This module contain the base package configuration for SAP Netweaver extensions
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class sap::install::experimental {

  # Experimental related packages
  package { $sap::params::package_sap_common:    ensure => installed; }
  package { $sap::params::package_sap_toolbox:   ensure => installed; }
  package { $sap::params::package_sap_sapcar:    ensure => installed; }
}
