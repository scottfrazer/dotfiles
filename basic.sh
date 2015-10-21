set -x

packages=('htop' 'tree' 'curl' 'wget')
for package in "${packages[@]}"
do
  sudo apt-get install -y $package
done

mkdir ~/bin
touch ~/.my.bashrc
curl http://beyondgrep.com/ack-2.14-single-file > ~/bin/ack && chmod 0755 !#:3
curl https://raw.githubusercontent.com/scottfrazer/dotfiles/master/.bashrc > ~/.bashrc
curl https://raw.githubusercontent.com/scottfrazer/dotfiles/master/.dir_colors > ~/.dir_colors
