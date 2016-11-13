#sap

[![Build Status](https://travis-ci.org/thbe/puppet-sap.png?branch=master)](https://travis-ci.org/thbe/puppet-sap)
[![Puppet Forge](https://img.shields.io/puppetforge/v/thbe/sap.svg)](https://forge.puppetlabs.com/thbe/sap)

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with sap](#setup)
    * [What sap affects](#what-sap-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with sap](#beginning-with-sap)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)


##Overview

The sap module provides packages, settings and other requirements for installing
specific SAP products on this node.

##Module Description

This module takes care that the SAP recommendations for installing specific SAP
products on the Linux operating system are fullfilled on the current node. The
configuration is based on the corresponding SAP OSS notes describing the necessary
configuration steps.

**Keep in mind, this module is _not_ related in any way to official SAP software
distribution nor is it supported in any way by official SAP contracts. This is
my private module to speed up the installation of SAP software in a controlled
puppetized way, so absolutely no warranty at all!**


##Setup

###What sap affects

* local packages
* local configuration files
* local service configurations

###Beginning with sap

Include '::sap' is enough to get you up and running if the parameters point to
proper values. Keep mind that all parameters point default to false, so using the
module without parameters will not change much. If you wish to pass in parameters
like which SAP software product will be installed on the node you should use
something like this:

```puppet
class { '::sap':
  cloudconnector => true,
}
```


##Usage

All interaction with the sap module can do be done through the main sap class.
This means you can simply toggle the options in the sap class to get at the full
functionality.

###I just want sap, what's the minimum I need?

```puppet
include '::sap'
```

###I just want ABAP stack, JAVA stack and ADS on target node.

```puppet
class { '::sap':
  abap => true,
  java => true,
  ads  => true,
}
```


##Reference

###Classes

* sap: Main class, includes all the rest.
* sap::install: Handles the packages.
* sap::config: Handles the configuration file.
* sap::service: Handles the alternative service link.

###Parameters

The following parameters are available in the sap module

####`abap`

Install prerequisites for an ABAP stack.

####`java`

Install prerequisites for an JAVA stack.

####`ads`

Install prerequisites for an Adobe Document Services stack.

####`cloudconnector`

Install prerequisites for the SAP Cloud Connector.

####`router`

Install prerequisites for the SAP Router.

####`experimental`

Use experimental features.


##Limitations

This module has been built on and tested against Puppet 4.0 and higher.

The module has been tested on:

* RedHat Enterprise Linux 6/7

but should work on:

* CentOS 6/7
* Oracle Enterprise Linux 6/7
* Scientific Linux 6/7

too. Testing on other platforms has been light and cannot be guaranteed.


##Development

If you like to add or improve this module, feel free to fork the module and send
me a merge request with the modification.
