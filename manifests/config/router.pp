# Class: sap::config::router
#
# This class contain the configuration for SAP Router
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage: include sap_router::config
#
class sap::config::router {

  # Make parameters locally available
  $router_oss_realm = $sap::router_oss_realm
  $router_rules     = $sap::router_rules

  # SAP Router configuration
  file { $sap::params::config_saproutetab:
    ensure  => file,
    mode    => '0644',
    group   => sapsys,
    content => template($sap::params::config_saproutetab_template);
  }

  file { $sap::params::config_saprouter_sysconfig:
    ensure  => file,
    mode    => '0644',
    content => template($sap::params::config_saprouter_sysconfig_template);
  }
}
