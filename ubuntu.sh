#!/bin/bash -l

set -x

sudo apt-get update

packages=('vim' 'git' 'htop' 'ctags' 'curl' 'wget')
for package in "${packages[@]}"
do
  sudo apt-get install -y $package
done

apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
