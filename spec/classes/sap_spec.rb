require 'spec_helper'

describe 'sap', :type => :class do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts
      end
    let(:params) { {base: true, base_extended: true, experimental: true, ads: true, bo: true, cloudconnector: true, hana: true, router: true, router_oss_realm: 'p:CN=sr.domain.tld, OU=0123456789, OU=SAProuter, O=SAP, C=DE', router_rules: ['P0,1  *  192.168.1.1  3200  password  # SID dispatcher', 'P0,1  *  192.168.1.2  3200  password  # SID dispatcher'], distro_text: 'Best distribution ever build version 7.2' } }

      it { is_expected.to compile.with_all_deps }

      it { is_expected.to contain_class('sap::params') }
      it { is_expected.to contain_class('sap::install') }
      it { is_expected.to contain_class('sap::install::common') }
      it { is_expected.to contain_class('sap::install::base') }
      it { is_expected.to contain_class('sap::install::base_extended') }
      it { is_expected.to contain_class('sap::install::experimental') }
      it { is_expected.to contain_class('sap::install::ads') }
      it { is_expected.to contain_class('sap::install::bo') }
      it { is_expected.to contain_class('sap::install::cloudconnector') }
      it { is_expected.to contain_class('sap::install::hana') }
      it { is_expected.to contain_class('sap::install::router') }
      it { is_expected.to contain_class('sap::config') }
      it { is_expected.to contain_class('sap::config::common') }
      it { is_expected.to contain_class('sap::config::base') }
      it { is_expected.to contain_class('sap::config::router') }
      it { is_expected.to contain_class('sap::service') }
      it { is_expected.to contain_class('sap::service::cloudconnector') }
      it { is_expected.to contain_class('sap::service::router') }

      # Common packages
      it { is_expected.to contain_package('uuidd').with_ensure('installed') }

      # SAP Base packages
      it { is_expected.to contain_package('compat-libstdc++-33').with_ensure('installed') }
      it { is_expected.to contain_package('elfutils-libelf-devel').with_ensure('installed') }
      it { is_expected.to contain_package('gcc-c++').with_ensure('installed') }
      it { is_expected.to contain_package('glibc').with_ensure('installed') }
      it { is_expected.to contain_package('glibc-devel').with_ensure('installed') }
      it { is_expected.to contain_package('glibc-headers').with_ensure('installed') }
      it { is_expected.to contain_package('libaio').with_ensure('installed') }
      it { is_expected.to contain_package('libaio-devel').with_ensure('installed') }
      it { is_expected.to contain_package('libstdc++').with_ensure('installed') }
      it { is_expected.to contain_package('libstdc++-devel').with_ensure('installed') }
      it { is_expected.to contain_package('tcsh').with_ensure('installed') }
      it { is_expected.to contain_package('xorg-x11-utils').with_ensure('installed') }

      # SAP Base extensions packages
      it { is_expected.to contain_package('expat').with_ensure('installed') }
      it { is_expected.to contain_package('expat.i686').with_ensure('installed') }
      it { is_expected.to contain_package('glibc.i686').with_ensure('installed') }
      it { is_expected.to contain_package('libgcc').with_ensure('installed') }
      it { is_expected.to contain_package('libgcc.i686').with_ensure('installed') }
      it { is_expected.to contain_package('libX11').with_ensure('installed') }
      it { is_expected.to contain_package('libX11.i686').with_ensure('installed') }
      it { is_expected.to contain_package('libXau').with_ensure('installed') }
      it { is_expected.to contain_package('libXau.i686').with_ensure('installed') }
      it { is_expected.to contain_package('libxcb').with_ensure('installed') }
      it { is_expected.to contain_package('libxcb.i686').with_ensure('installed') }

      # Experimental packages
      it { is_expected.to contain_package('sap-common').with_ensure('installed') }
      it { is_expected.to contain_package('sap-toolbox').with_ensure('installed') }
      it { is_expected.to contain_package('sap-sapcar').with_ensure('installed') }

      # SAP ADS packages
      it { is_expected.to contain_package('autoconf').with_ensure('installed') }
      it { is_expected.to contain_package('automake').with_ensure('installed') }
      it { is_expected.to contain_package('transfig').with_ensure('installed') }
      it { is_expected.to contain_package('cyrus-sasl-lib.i686').with_ensure('installed') }
      it { is_expected.to contain_package('fontconfig.i686').with_ensure('installed') }
      it { is_expected.to contain_package('freetype.i686').with_ensure('installed') }
      it { is_expected.to contain_package('keyutils-libs.i686').with_ensure('installed') }
      it { is_expected.to contain_package('krb5-libs.i686').with_ensure('installed') }
      it { is_expected.to contain_package('libcom_err.i686').with_ensure('installed') }
      it { is_expected.to contain_package('libidn.i686').with_ensure('installed') }
      it { is_expected.to contain_package('libidn-devel.i686').with_ensure('installed') }
      it { is_expected.to contain_package('libselinux.i686').with_ensure('installed') }
      it { is_expected.to contain_package('nspr.i686').with_ensure('installed') }
      it { is_expected.to contain_package('nss.i686').with_ensure('installed') }
      it { is_expected.to contain_package('nss-softokn.i686').with_ensure('installed') }
      it { is_expected.to contain_package('nss-softokn-freebl.i686').with_ensure('installed') }
      it { is_expected.to contain_package('nss-util.i686').with_ensure('installed') }
      it { is_expected.to contain_package('openldap.i686').with_ensure('installed') }
      it { is_expected.to contain_package('zlib.i686').with_ensure('installed') }

      # SAP BO packges
      it { is_expected.to contain_package('compat-libstdc++-33.i686').with_ensure('installed') }
      it { is_expected.to contain_package('libstdc++.i686').with_ensure('installed') }
      it { is_expected.to contain_package('libXcursor').with_ensure('installed') }
      it { is_expected.to contain_package('libXcursor.i686').with_ensure('installed') }
      it { is_expected.to contain_package('libXext').with_ensure('installed') }
      it { is_expected.to contain_package('libXext.i686').with_ensure('installed') }
      it { is_expected.to contain_package('libXfixes').with_ensure('installed') }
      it { is_expected.to contain_package('libXfixes.i686').with_ensure('installed') }
      it { is_expected.to contain_package('libXrender').with_ensure('installed') }
      it { is_expected.to contain_package('libXrender.i686').with_ensure('installed') }

      # SAP Cloud connector packages
      it { is_expected.to contain_package('sapjvm_8').with_ensure('installed') }
      it { is_expected.to contain_package('com.sap.scc-ui').with_ensure('installed') }

      # SAP HANA packages
      it { is_expected.to contain_package('PackageKit-gtk3-module').with_ensure('installed') }
      it { is_expected.to contain_package('bind-utils').with_ensure('installed') }
      it { is_expected.to contain_package('cairo').with_ensure('installed') }
      it { is_expected.to contain_package('expect').with_ensure('installed') }
      it { is_expected.to contain_package('graphviz').with_ensure('installed') }
      it { is_expected.to contain_package('gtk2').with_ensure('installed') }
      it { is_expected.to contain_package('iptraf-ng').with_ensure('installed') }
      it { is_expected.to contain_package('java-1.8.0-openjdk').with_ensure('installed') }
      it { is_expected.to contain_package('krb5-libs').with_ensure('installed') }
      it { is_expected.to contain_package('krb5-workstation').with_ensure('installed') }
      it { is_expected.to contain_package('libcanberra-gtk2').with_ensure('installed') }
      it { is_expected.to contain_package('libicu').with_ensure('installed') }
      it { is_expected.to contain_package('libpng12').with_ensure('installed') }
      it { is_expected.to contain_package('libssh2').with_ensure('installed') }
      it { is_expected.to contain_package('libtool-ltdl').with_ensure('installed') }
      it { is_expected.to contain_package('net-tools').with_ensure('installed') }
      it { is_expected.to contain_package('numactl').with_ensure('installed') }
      it { is_expected.to contain_package('openssl098e').with_ensure('installed') }
      it { is_expected.to contain_package('openssl').with_ensure('installed') }
      it { is_expected.to contain_package('xfsprogs').with_ensure('installed') }
      it { is_expected.to contain_package('xulrunner').with_ensure('installed') }

      # SAP router package
      it { is_expected.to contain_package('sap-router').with_ensure('installed') }

      # SAP Linux configuration
      it { is_expected.to contain_file('/etc/sysctl.conf').with_ensure('file') }
      it { is_expected.to contain_file('/etc/security/limits.d/00-sap.conf').with_ensure('file') }
      it 'should generate valid content for 00-sap.conf - generic part' do
        content = catalogue.resource('file', '/etc/security/limits.d/00-sap.conf').send(:parameters)[:content]
        expect(content).to match('@sapsys    hard    nofile    65537')
        expect(content).to match('@dba       hard    nofile    65537')
        expect(content).to match('\*          hard    nofile    65537')
      end

      # SAP router configuration
      it { is_expected.to contain_file('/etc/sysconfig/sap-router').with_ensure('file') }
      it 'should generate valid content for sap-router' do
        content = catalogue.resource('file', '/etc/sysconfig/sap-router').send(:parameters)[:content]
        expect(content).to match('p:CN=sr.domain.tld, OU=0123456789, OU=SAProuter, O=SAP, C=DE')
      end
      it { is_expected.to contain_file('/opt/sap/R99/profile/saproutetab').with_ensure('file') }
      it 'should generate valid content for saproutetab' do
        content = catalogue.resource('file', '/opt/sap/R99/profile/saproutetab').send(:parameters)[:content]
        expect(content).to match('P0,1  \*  192.168.1.1  3200  password  # SID dispatcher')
        expect(content).to match('P0,1  \*  192.168.1.2  3200  password  # SID dispatcher')
        expect(content).to match('D  \*  \*  \*  # If nothing match, traffic is denied')
      end

      # SAP cloudconnector service
      it { is_expected.to contain_service('uuidd').with( 'ensure' => 'running', 'enable' => 'true') }
      it { is_expected.to contain_service('scc_daemon').with( 'ensure' => 'running', 'enable' => 'true') }

      # SAP router service
      it { is_expected.to contain_service('sap-router').with( 'ensure' => 'running', 'enable' => 'true') }

      it { is_expected.to contain_file('/etc/redhat-release').with_ensure('file') }
      it 'should generate valid content for redhat-release' do
        content = catalogue.resource('file', '/etc/redhat-release').send(:parameters)[:content]
        expect(content).to match('Best distribution ever build version 7.2')
      end

      case facts[:operatingsystem]
      when 'RedHat'
        case facts[:operatingsystemmajrelease]
        when '6'
          it { is_expected.to contain_package('compat-gcc-34').with_ensure('installed') }
          it { is_expected.to contain_package('pdksh').with_ensure('installed') }
        end
      when 'CentOS'
        case facts[:operatingsystemmajrelease]
        when '6'
          it { is_expected.to contain_package('compat-gcc-34').with_ensure('installed') }
          it { is_expected.to contain_package('pdksh').with_ensure('installed') }
        end
      when 'Scientific'
        case facts[:operatingsystemmajrelease]
        when '6'
          it { is_expected.to contain_package('compat-gcc-34').with_ensure('installed') }
          it { is_expected.to contain_package('pdksh').with_ensure('installed') }
        end
      when 'OracleLinux'
        case facts[:operatingsystemmajrelease]
        when '6'
          it { is_expected.to contain_package('compat-gcc-34').with_ensure('installed') }
          it { is_expected.to contain_package('pdksh').with_ensure('installed') }
        end
      else
        it { is_expected.to contain_warning('The current operating system is not supported!') }
      end
    end
  end
end
