export TERM=xterm-256color

packages=('htop' 'tree' 'curl' 'wget')
for package in "${packages[@]}"
do
  echo "installing $package"
  sudo apt-get install -y $package
done

mkdir ~/bin
touch ~/.my.bashrc
curl https://raw.githubusercontent.com/scottfrazer/dotfiles/master/.bashrc > ~/.bashrc
curl https://raw.githubusercontent.com/scottfrazer/dotfiles/master/.dir_colors > ~/.dir_colors
source ~/.bashrc
