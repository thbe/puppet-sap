# Class: sap::install::base_extended
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
class sap::install::base_extended {

  # Base extensions related packages
  package { $sap::params::package_expat:         ensure => installed; }
  package { $sap::params::package_expat_i686:    ensure => installed; }
  package { $sap::params::package_glibc_i686:    ensure => installed; }
  package { $sap::params::package_libgcc:        ensure => installed; }
  package { $sap::params::package_libgcc_i686:   ensure => installed; }
  package { $sap::params::package_libx11:        ensure => installed; }
  package { $sap::params::package_libx11_i686:   ensure => installed; }
  package { $sap::params::package_libxau:        ensure => installed; }
  package { $sap::params::package_libxau_i686:   ensure => installed; }
  package { $sap::params::package_libxbc:        ensure => installed; }
  package { $sap::params::package_libxbc_i686:   ensure => installed; }
}
