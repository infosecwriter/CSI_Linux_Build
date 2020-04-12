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
- [Github Actions](https://github.com/features/actions)  Automate the build process.  Although will require an external build agent to build Virtualbox VMs.


## Task Lists

- [ ] Basic Build process functional - In progress
- [ ] Migrate all instructions in [build-manual](build-manual/) to Ansible Playbooks
- [ ] Method for GUI customizations

## Building Instructions

1. Install the requirements above (or at a minium, Virtualbox and Packer)
2. Run the following commands:

```sh
cd packer
make build
```

3. Wait a bit.  After completion, there should be an ovf in packer/output-xubuntu1804-virtualbox-iso
4. Import the built VM into virtualbox

```sh
cd output-xubuntu1804-virtualbox-iso
vboxmanage import xubuntu1804.ovf
```
5. Start the VM
6. If everything looks good, shut down the VM, and export to an OVA file

```sh
cd output-ova
vboxmanage export xubuntu1804 -o xubuntu.ova
```
