# Class: sap::install::ads
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
class sap::install::ads {

  # SAP ADS related packages
  package { $sap::params::package_autoconf:                ensure => installed; }
  package { $sap::params::package_automake:                ensure => installed; }
  package { $sap::params::package_cyrus_sasl_lib_i686:     ensure => installed; }
  package { $sap::params::package_fontconfig_i686:         ensure => installed; }
  package { $sap::params::package_freetype_i686:           ensure => installed; }
  package { $sap::params::package_keyutils_libs_i686:      ensure => installed; }
  package { $sap::params::package_krb5_libs_i686:          ensure => installed; }
  package { $sap::params::package_libcom_err_i686:         ensure => installed; }
  package { $sap::params::package_libidn_i686:             ensure => installed; }
  package { $sap::params::package_libidn_devel_i686:       ensure => installed; }
  package { $sap::params::package_libselinux_i686:         ensure => installed; }
  package { $sap::params::package_nspr_i686:               ensure => installed; }
  package { $sap::params::package_nss_i686:                ensure => installed; }
  package { $sap::params::package_nss_softokn_i686:        ensure => installed; }
  package { $sap::params::package_nss_softokn_freebl_i686: ensure => installed; }
  package { $sap::params::package_nss_util_i686:           ensure => installed; }
  package { $sap::params::package_openldap_i686:           ensure => installed; }
  package { $sap::params::package_transfig:                ensure => installed; }
  package { $sap::params::package_zlib_i686:               ensure => installed; }
}
