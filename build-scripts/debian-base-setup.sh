#!/bin/sh
#
# Setup pre-requisites for a Debian based box

# Build Box Setup (debian based)

# need git...might be able to pare down
sudo apt-get -y install git zip tmux

# Install virtualbox
wget https://www.virtualbox.org/download/oracle_vbox_2016.asc
sudo apt-key add oracle_vbox_2016.asc
echo "deb http://download.virtualbox.org/virtualbox/debian stretch contrib" |sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt-get update
sudo apt-get -y install virtualbox-6.1

# Install packer (latest from github)
mkdir tmp; cd tmp
wget https://releases.hashicorp.com/packer/1.5.5/packer_1.5.5_linux_amd64.zip
unzip packer_1.5.5_linux_amd64.zip
sudo mv packer /usr/local/bin
sudo chmod 755 /usr/local/bin/packer

# Checkout source
cd $HOME
git clone https://github.com/infosecwriter/CSI_Linux_Build.git