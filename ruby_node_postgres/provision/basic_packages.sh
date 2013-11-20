#!/usr/bin/env bash

apt-get -y update
apt-get -y upgrade
apt-get -y install linux-headers-$(uname -r) build-essential
apt-get -y install git-core zlib1g-dev libssl-dev libreadline-dev python-software-properties curl ssl-cert libopenssl-ruby libxslt-dev libxml2-dev
apt-get -y install vim
apt-get clean
