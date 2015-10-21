set -x

packages=('vim' 'ctags')
for package in "${packages[@]}"
do
  sudo apt-get install -y $package
done

rm -rf ~/.vim ~/.vimrc
mkdir -p ~/.vim/autoload ~/.vim/bundle

# Install Pathogen
pushd ~/.vim/autoload
curl -LSso ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
popd

# Install Vim plugins
pushd ~/.vim
git clone https://github.com/gregsexton/MatchTag bundle/MatchTag
git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp
git clone https://github.com/docunext/closetag.vim.git bundle/closetag
git clone https://github.com/derekwyatt/vim-scala.git bundle/vim-scala
git clone https://github.com/elzr/vim-json.git bundle/vim-json
git clone https://github.com/altercation/vim-colors-solarized.git bundle/vim-colors-solarized
git clone https://github.com/vim-scripts/taglist.vim.git bundle/taglist
git clone https://github.com/tpope/vim-fugitive.git bundle/vim-fugitive
git clone https://github.com/bronson/vim-trailing-whitespace bundle/vim-trailing-whitespace
git clone https://github.com/majutsushi/tagbar.git bundle/tagbar
git clone https://github.com/Lokaltog/vim-powerline bundle/vim-powerline
git clone https://github.com/scrooloose/nerdtree.git bundle/nerdtree
git clone https://github.com/flazz/vim-colorschemes bundle/vim-colorschemes
git clone https://github.com/scottfrazer/vim-hermes bundle/vim-hermes
git clone https://github.com/broadinstitute/vim-wdl bundle/vim-wdl
popd

curl https://raw.githubusercontent.com/scottfrazer/dotfiles/master/.vimrc > ~/.vimrc
curl https://raw.githubusercontent.com/scottfrazer/dotfiles/master/.ctags > ~/.ctags
