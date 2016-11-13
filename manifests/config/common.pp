# Class: sap::config::commmon
#
# This class contain the configuration for SAP Netweaver
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class sap::config::common {

  # Replace distribution string if defined
  if ($sap::distro_text != undef) {
    $local_distro_text = "${sap::distro_text}\n"
    file { $sap::params::config_redhat_release_conf:
      ensure  => file,
      mode    => '0644',
      content => $local_distro_text;
    }
  }
}
