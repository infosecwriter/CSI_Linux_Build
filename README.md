# CSI Linux Build

An automated build system to create the machines that make up the CSI Linux Distrubtions

## Goals

1.  Automate the build process of CSI Linux
2.  Allow for complete visibility of the makeup of the Linux distribution.
3.  Allow for third-party verification of all software and scripts included in the distribution

## Tools

The following tools are being targetted.  

- **Virtualbox:**  The core virutalization system that is the primary target of the CSI distribution
- **Packer:**  An automated system to build machine images
- **Ansible:**  A configuration management/automation system that will be leveraged for configurations
