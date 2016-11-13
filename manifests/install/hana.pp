# Class: sap::install::hana
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
class sap::install::hana {

  # SAP HANA related packages
  package { $sap::params::package_bind_utils:               ensure => installed; }
  package { $sap::params::package_cairo:                    ensure => installed; }
  package { $sap::params::package_expect:                   ensure => installed; }
  package { $sap::params::package_graphviz:                 ensure => installed; }
  package { $sap::params::package_gtk2:                     ensure => installed; }
  package { $sap::params::package_iptraf_ng:                ensure => installed; }
  package { $sap::params::package_java_1_8_0_openjdk:       ensure => installed; }
  package { $sap::params::package_krb5_libs:                ensure => installed; }
  package { $sap::params::package_krb5_workstation:         ensure => installed; }
  package { $sap::params::package_libcanberra_gtk2:         ensure => installed; }
  package { $sap::params::package_libicu:                   ensure => installed; }
  package { $sap::params::package_libpng12:                 ensure => installed; }
  package { $sap::params::package_libssh2:                  ensure => installed; }
  package { $sap::params::package_libtool_ltdl:             ensure => installed; }
  package { $sap::params::package_net_tools:                ensure => installed; }
  package { $sap::params::package_numactl:                  ensure => installed; }
  package { $sap::params::package_openssl:                  ensure => installed; }
  package { $sap::params::package_openssl098e:              ensure => installed; }
  package { $sap::params::package_packagekit_gtk3_module:   ensure => installed; }
  package { $sap::params::package_xfsprogs:                 ensure => installed; }
  package { $sap::params::package_xulrunner:                ensure => installed; }
}
