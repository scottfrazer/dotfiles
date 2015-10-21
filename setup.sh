#!/bin/bash -l

set -x

sudo apt-get update
sudo apt-get install -y curl

curl https://raw.githubusercontent.com/scottfrazer/dotfiles/master/basic.sh | bash
curl https://raw.githubusercontent.com/scottfrazer/dotfiles/master/git.sh | bash
curl https://raw.githubusercontent.com/scottfrazer/dotfiles/master/vim.sh | bash
curl https://raw.githubusercontent.com/scottfrazer/dotfiles/master/scala.sh | bash
