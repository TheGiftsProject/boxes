#!/usr/bin/env bash

set -e

VAGRANT_REMOTE_LOCATION="http://files.vagrantup.com/packages/a40522f5fabccb9ddabad03d836e120ff5d14093/Vagrant-1.3.5.dmg"

echo "Bootstrapping:"
echo ".. Checking for Vagrant"

foobar_command_name="vagrant"

if ! foobar_loc="$(type -p "vagrant")" || [ -z "$foobar_loc" ]; then
  echo ".... No Vagrant installed. Fetching from:" $VAGRANT_REMOTE_LOCATION
  wget -O /tmp/Vagrant-1.3.5.dmg $VAGRANT_REMOTE_LOCATION
  hdiutil mount /tmp/Vagrant-1.3.5.dmg
  sudo installer -store -pkg /Volumes/Vagrant/Vagrant.pkg -target / ;
  hdiutil detach /Volumes/Vagrant
else
  echo ".... Vagrant found at:" $VAGRANT
fi

cd provision
gem install berkshelf
vagrant plugin install vagrant-berkshelf
berks install
cd ..
vagrant up
vagrant ssh
