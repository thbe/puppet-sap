require 'spec_helper_acceptance'

describe 'sap' do
  let(:manifest) {
    <<-CLASSPARAMETER
class { 'sap':
  base              => true,
  base_extended     => true,
  experimental      => false,
  ads               => true,
  bo                => true,
  cloudconnector    => false,
  hana              => true,
  router            => false,
  router_oss_realm  => 'p:CN=sr.domain.tld, OU=0123456789, OU=SAProuter, O=SAP, C=DE',
  router_rules      => [ 'P0,1  *  192.168.1.1  3200  password  # SID dispatcher', 'P0,1  *  192.168.1.2  3200  password  # SID dispatcher' ],
  distro_text       => 'Best distribution ever build version 7.2',
}
CLASSPARAMETER
  }

  it 'should apply without errors' do
    apply_manifest(manifest, :catch_failures => true)
  end

  it 'should apply a second time without changes' do
    @result = apply_manifest(manifest)
    expect(@result.exit_code).to be_zero
  end

  describe file('/etc/security/limits.d/00-sap.conf') do
    it { should be_file }
    it { should exist }
  end

  describe package('uuidd') do
    it { should be_installed }
  end
  
  describe package('compat-libstdc++-33') do
    it { should be_installed }
  end
      
  describe package('elfutils-libelf-devel') do
    it { should be_installed }
  end
      
  describe package('gcc-c++') do
    it { should be_installed }
  end
      
  describe package('glibc') do
    it { should be_installed }
  end
      
  describe package('glibc-devel') do
    it { should be_installed }
  end

  describe package('glibc-headers') do
    it { should be_installed }
  end
        
  describe package('libaio') do
    it { should be_installed }
  end

  describe package('libaio-devel') do
    it { should be_installed }
  end
        
  describe package('libstdc++') do
    it { should be_installed }
  end
  
  describe package('libstdc++-devel') do
    it { should be_installed }
  end
      
  describe package('tcsh') do
    it { should be_installed }
  end
  
  describe package('xorg-x11-utils') do
    it { should be_installed }
  end
end
