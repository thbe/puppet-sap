# Class: sap::config::base
#
# This class contain the base configuration for SAP Netweaver
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class sap::config::base {

  # SAP Netweaver configuration
  file { $sap::params::config_sysctl_conf:
    ensure  => file,
    mode    => '0644',
    content => template($sap::params::config_sysctl_conf_template);
  }

  file { $sap::params::config_limits_conf:
    ensure  => file,
    mode    => '0644',
    content => template($sap::params::config_limits_conf_template);
  }
}
