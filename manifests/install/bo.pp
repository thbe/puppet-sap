# Class: sap::install::bo
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
class sap::install::bo {

  # SAP BO related packages
  package { $sap::params::package_compat_libstdcpp_33_i686: ensure => installed; }
  package { $sap::params::package_libstdcpp_i686:           ensure => installed; }
  package { $sap::params::package_libxcursor:               ensure => installed; }
  package { $sap::params::package_libxcursor_i686:          ensure => installed; }
  package { $sap::params::package_libxext:                  ensure => installed; }
  package { $sap::params::package_libxext_i686:             ensure => installed; }
  package { $sap::params::package_libxfixes:                ensure => installed; }
  package { $sap::params::package_libxfixes_i686:           ensure => installed; }
  package { $sap::params::package_libxrender:               ensure => installed; }
  package { $sap::params::package_libxrender_i686:          ensure => installed; }
}
