# Class: sap::config
#
# This class contain the configuration for SAP Netweaver
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage: include sap::config
#
class sap::config {

  include sap::config::common

  if $sap::base {
    include sap::config::base
  }

  if $sap::router {
    include sap::config::router
  }
}
