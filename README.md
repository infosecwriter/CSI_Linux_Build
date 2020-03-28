# CSI Linux Build

An automated build system to create the machines that make up the CSI Linux Distrubtions

## Goals

1.  Automate the build process of CSI Linux
2.  Allow for complete visibility of the makeup of the Linux distribution.
3.  Allow for third-party verification of all software and scripts included in the distribution

## Requirements

The following tools will be used for building the image.  

- [Virtualbox:](https://www.virtualbox.org/)  The core virutalization system that is the primary target of the CSI distribution
- [Packer:](http://www.packer.io/)  An system to build machine images
- [Ansible:](https://www.ansible.com/resources/get-started)  A configuration management/automation system that will be leveraged for configurations
- [Github Actions](https://github.com/features/actions)  Automate the build process
