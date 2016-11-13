# Class: sap::install
#
# This class install the package requirements for SAP Netweaver
#
# Parameters:   This class has no parameters
#
# Actions:      This class has no actions
#
# Requires:     This class has no requirements
#
# Sample Usage:
#
class sap::install {

  include sap::install::common

  if $sap::base {
    include sap::install::base
  }

  if $sap::base_extended {
    include sap::install::base_extended
  }

  if $sap::ads {
    include sap::install::ads
  }

  if $::operatingsystemmajrelease == '7' {
    if $sap::bo {
      include sap::install::bo
    }

    if $sap::cloudconnector {
      include sap::install::cloudconnector
    }

    if $sap::hana {
      include sap::install::hana
    }
  }

  if $sap::experimental {
    include sap::install::experimental

    if $sap::router {
      include sap::install::router
    }
  }
}
