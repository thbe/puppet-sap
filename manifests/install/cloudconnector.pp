# Class: sap::install::cloudconnector
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
class sap::install::cloudconnector {

  # SAP Cloud Connector packages
  package { $sap::params::package_sapjvm:        ensure => installed; }
  package { $sap::params::package_scc:           ensure => installed; }
}
