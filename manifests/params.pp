# Class: sap::params
#
# This module contain the parameters for SAP Netweaver
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage: include sap::params
#
class sap::params {
  # Operating system specific definitions
  case $::osfamily {
    'RedHat' : {
      $linux = true

      # Package definition common
      $package_uuidd                        = 'uuidd'

      # Package definition base
      $package_compat_gcc_34                = 'compat-gcc-34'
      $package_compat_libstdcpp_33          = 'compat-libstdc++-33'
      $package_elfutils_libelf_devel        = 'elfutils-libelf-devel'
      $package_gcc_cpp                      = 'gcc-c++'
      $package_glibc                        = 'glibc'
      $package_glibc_devel                  = 'glibc-devel'
      $package_glibc_headers                = 'glibc-headers'
      $package_libaio                       = 'libaio'
      $package_libaio_devel                 = 'libaio-devel'
      $package_libstdcpp                    = 'libstdc++'
      $package_libstdcpp_devel              = 'libstdc++-devel'
      $package_pdksh                        = 'pdksh'
      $package_rar                          = 'rar'
      $package_tcsh                         = 'tcsh'
      $package_xorg_x11_utils               = 'xorg-x11-utils'

      # Package definiton base extensions
      $package_expat                        = 'expat'
      $package_expat_i686                   = 'expat.i686'
      $package_glibc_i686                   = 'glibc.i686'
      $package_libgcc                       = 'libgcc'
      $package_libgcc_i686                  = 'libgcc.i686'
      $package_libx11                       = 'libX11'
      $package_libx11_i686                  = 'libX11.i686'
      $package_libxau                       = 'libXau'
      $package_libxau_i686                  = 'libXau.i686'
      $package_libxbc                       = 'libxcb'
      $package_libxbc_i686                  = 'libxcb.i686'

      # Package definiton ADS
      $package_autoconf                     = 'autoconf'
      $package_automake                     = 'automake'
      $package_cyrus_sasl_lib_i686          = 'cyrus-sasl-lib.i686'
      $package_fontconfig_i686              = 'fontconfig.i686'
      $package_freetype_i686                = 'freetype.i686'
      $package_keyutils_libs_i686           = 'keyutils-libs.i686'
      $package_krb5_libs_i686               = 'krb5-libs.i686'
      $package_libcom_err_i686              = 'libcom_err.i686'
      $package_libidn_i686                  = 'libidn.i686'
      $package_libidn_devel_i686            = 'libidn-devel.i686'
      $package_libselinux_i686              = 'libselinux.i686'
      $package_nspr_i686                    = 'nspr.i686'
      $package_nss_i686                     = 'nss.i686'
      $package_nss_softokn_i686             = 'nss-softokn.i686'
      $package_nss_softokn_freebl_i686      = 'nss-softokn-freebl.i686'
      $package_nss_util_i686                = 'nss-util.i686'
      $package_openldap_i686                = 'openldap.i686'
      $package_transfig                     = 'transfig'
      $package_zlib_i686                    = 'zlib.i686'

      # Package definition BO
      $package_compat_libstdcpp_33_i686     = 'compat-libstdc++-33.i686'
      $package_libstdcpp_i686               = 'libstdc++.i686'
      $package_libxcursor                   = 'libXcursor'
      $package_libxcursor_i686              = 'libXcursor.i686'
      $package_libxext                      = 'libXext'
      $package_libxext_i686                 = 'libXext.i686'
      $package_libxfixes                    = 'libXfixes'
      $package_libxfixes_i686               = 'libXfixes.i686'
      $package_libxrender                   = 'libXrender'
      $package_libxrender_i686              = 'libXrender.i686'

      # Package definition HANA
      $package_bind_utils                   = 'bind-utils'
      $package_cairo                        = 'cairo'
      $package_expect                       = 'expect'
      $package_graphviz                     = 'graphviz'
      $package_gtk2                         = 'gtk2'
      $package_iptraf_ng                    = 'iptraf-ng'
      $package_java_1_8_0_openjdk           = 'java-1.8.0-openjdk'
      $package_krb5_libs                    = 'krb5-libs'
      $package_krb5_workstation             = 'krb5-workstation'
      $package_libcanberra_gtk2             = 'libcanberra-gtk2'
      $package_libicu                       = 'libicu'
      $package_libpng12                     = 'libpng12'
      $package_libssh2                      = 'libssh2'
      $package_libtool_ltdl                 = 'libtool-ltdl'
      $package_net_tools                    = 'net-tools'
      $package_numactl                      = 'numactl'
      $package_openssl                      = 'openssl'
      $package_openssl098e                  = 'openssl098e'
      $package_packagekit_gtk3_module       = 'PackageKit-gtk3-module'
      $package_xfsprogs                     = 'xfsprogs'
      $package_xulrunner                    = 'xulrunner'

      # Package definition SAP Cloud Connector
      $package_sapjvm                       = 'sapjvm_8'
      $package_scc                          = 'com.sap.scc-ui'

      # Package definition SAP Router
      $package_saprouter                    = 'sap-router'

      # Package definition experimental
      $package_sap_common                   = 'sap-common'
      $package_sap_toolbox                  = 'sap-toolbox'
      $package_sap_sapcar                   = 'sap-sapcar'

      # Config definition
      $config_sysctl_conf                   = '/etc/sysctl.conf'
      $config_sysctl_conf_template          = 'sap/etc/sysctl.conf.erb'
      $config_limits_conf                   = '/etc/security/limits.d/00-sap.conf'
      $config_limits_conf_template          = 'sap/etc/security/limits.d/00-sap.conf.erb'
      $config_redhat_release_conf           = '/etc/redhat-release'

      # Config definition SAP Router
      $config_saproutetab                   = '/opt/sap/R99/profile/saproutetab'
      $config_saproutetab_template          = 'sap/profile/saproutetab.erb'
      $config_saprouter_sysconfig           = '/etc/sysconfig/sap-router'
      $config_saprouter_sysconfig_template  = 'sap/etc/sysconfig/sap-router.erb'

      # Service definition
      $service_uuidd                        = 'uuidd'

      # Service definition SAP Cloud Connector
      $service_scc                          = 'scc_daemon'

      # Service definition SAP Router
      $service_saprouter                    = 'sap-router'
    }
    default  : {
      $linux = false
    }
  }

  # SAP Netweaver definitions
  $ads            = false
  $base           = false
  $base_extended  = false
  $bo             = false
  $cloudconnector = false
  $hana           = false
  $router         = false

  # Additional settings
  $distro_text    = 'original'
  $experimental   = false

  # SAP Router definitions
  $router_oss_realm = 'p:CN=hostname.domain.tld, OU=0123456789, OU=SAProuter, O=SAP, C=DE'
}
