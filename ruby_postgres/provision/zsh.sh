#!/usr/bin/env bash

sudo apt-get -y install zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
cp /vagrant/provision/.zshrc /home/vagrant/.zshrc
sudo chsh -s $(which zsh) vagrant
