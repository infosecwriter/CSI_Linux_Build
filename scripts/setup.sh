#!/bin/bash -eux

# Disable daily apt unattended updates.
echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic