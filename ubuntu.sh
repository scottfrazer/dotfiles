#!/bin/bash -l

set -x

sudo apt-get update

packages=('vim')
for package in "${packages[@]}"
do
  sudo apt-get install -y $package
done
