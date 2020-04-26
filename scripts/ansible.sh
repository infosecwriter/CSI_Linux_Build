#!/bin/bash -eux

# Disable the proxy, if available (and not error out)
sed -i 's/\(.*Proxy.*\)/# \1/g' /etc/apt/apt.conf || true

# Install Ansible repository.
apt -y update && apt-get -y upgrade
apt -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible

# Install Ansible.
apt -y update
apt -y install ansible
