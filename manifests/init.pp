# == Class: sap
#
# This module manages SAP prerequisites for several types of SAP installations
# based on corresponding SAP OSS notes
#
# === Parameters
#
# * `base`
#   Set to true when SAP ABAP, JAVA stack, SAP ADS or SAP BO is used
#   Default value is false
#
# * `base_ext`
#   Set to true when SAP ADS or SAP BO is used
#   Default value is false
#
# * `experimental`
#   Set to true when experimental features should be used
#   (i.e. SAP Router)
#   Default value is false
#
# * `ads`
#   Set to true when Adobe Document Serverice is used
#   Default value is false
#
# * `bo`
#   Set to true when SAP Business Objects is used
#   Default value is false
#
# * `cloudconnector`
#   Set to true when SAP Cloud Connector is used
#   Default value is false
#
# * `router`
#   Set to true when SAP Router is used
#   Default value is false
#
# * `router_oss_realm`
#   Specify OSS realm for SAP router connection
#   Default value is undef
#
# * `router_rules`
#   Specify array of rules for the SAP router
#   Default value is undef
#
# * `distro_text`
#   Modify text in /etc/redhat-release
#   Default value is undef
#
# === Variables
#
# === Examples
#
#  class { '::sap':
#    ads      => true,
#    base     => true,
#    base_ext => true
#  }
#
# === Authors
#
# Author Thomas Bendler <project@bendler-net.de>
#
# === Copyright
#
# Copyright 2016 Thomas Bendler
#
class sap (
  $base              = $sap::params::base,
  $base_extended     = $sap::params::base_extended,
  $experimental      = $sap::params::experimental,
  $ads               = $sap::params::ads,
  $bo                = $sap::params::bo,
  $cloudconnector    = $sap::params::cloudconnector,
  $hana              = $sap::params::hana,
  $router            = $sap::params::router,
  $router_oss_realm  = undef,
  $router_rules      = undef,
  $distro_text       = undef
) inherits sap::params {

  # Validate parameters
  validate_bool($base)
  validate_bool($base_extended)
  validate_bool($experimental)
  validate_bool($ads)
  validate_bool($bo)
  validate_bool($cloudconnector)
  validate_bool($router)
  if ($router_oss_realm != undef) {
    validate_string($router_oss_realm)
  }
  if ($router_rules != undef) {
    validate_array($router_rules)
  }
  if ($distro_text != undef) {
    validate_string($distro_text)
  }

  # Fail if dependencies not met
  if (($ads != false) or ($bo != false) or ($hana !=false)) {
    if ($base != true) {
      fail('Dependency parameter $sap::base not set to true!')
    }
    if ($base_extended != true) {
      fail('Dependency parameter $sap::base_extended not set to true!')
    }
  }

  # Start workflow
  if $sap::params::linux {
    class{'sap::install': } ->
    class{'sap::config': } ~>
    class{'sap::service': } ->
    Class['sap']
  } else {
    warning('The current operating system is not supported!')
  }
}
