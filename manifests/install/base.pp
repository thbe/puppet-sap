# Class: sap::install::base
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
class sap::install::base {

  # Base related packages
  package { $sap::params::package_compat_libstdcpp_33:    ensure => installed; }
  package { $sap::params::package_elfutils_libelf_devel:  ensure => installed; }
  package { $sap::params::package_gcc_cpp:                ensure => installed; }
  package { $sap::params::package_glibc:                  ensure => installed; }
  package { $sap::params::package_glibc_devel:            ensure => installed; }
  package { $sap::params::package_glibc_headers:          ensure => installed; }
  package { $sap::params::package_libaio:                 ensure => installed; }
  package { $sap::params::package_libaio_devel:           ensure => installed; }
  package { $sap::params::package_libstdcpp:              ensure => installed; }
  package { $sap::params::package_libstdcpp_devel:        ensure => installed; }
  package { $sap::params::package_tcsh:                   ensure => installed; }
  package { $sap::params::package_xorg_x11_utils:         ensure => installed; }
  if $::operatingsystemmajrelease == '6' {
    package { $sap::params::package_compat_gcc_34:          ensure => installed; }
    package { $sap::params::package_pdksh:                  ensure => installed; }
  }
}
