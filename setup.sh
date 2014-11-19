rm -rf ~/.vim ~/.vimrc

mkdir -p ~/.vim/autoload ~/.vim/bundle

pushd ~/.vim/autoload
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
popd

pushd ~/.vim
git clone https://github.com/gregsexton/MatchTag bundle/MatchTag
git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp
git clone git://github.com/docunext/closetag.vim.git bundle/closetag
git clone git@github.com:derekwyatt/vim-scala.git bundle/vim-scala
git clone git@github.com:elzr/vim-json.git bundle/vim-json
git clone git://github.com/altercation/vim-colors-solarized.git bundle/vim-colors-solarized
git clone git@github.com:vim-scripts/taglist.vim.git bundle/taglist
git clone https://github.com/scrooloose/syntastic.git bundle/syntastic
git clone git://github.com/tpope/vim-fugitive.git bundle/vim-fugitive
git clone https://github.com/bronson/vim-trailing-whitespace bundle/vim-trailing-whitespace
git clone git://github.com/majutsushi/tagbar.git bundle/tagbar
git clone https://github.com/Lokaltog/vim-powerline bundle/vim-powerline
git clone https://github.com/scrooloose/nerdtree.git bundle/nerdtree
git clone https://github.com/flazz/vim-colorschemes bundle/vim-colorschemes
popd

cp .vimrc ~
cp .bashrc ~
cp .dir_colors ~
cp .gitconfig ~
