Contains better environment setup for Vim and Bash

setup.sh
========

Run as `bash setup.sh` of `source setup.sh`.  This will make backups of files like `~/.bashrc`, `~/.vimrc` with the prefix `.backup`.

.vimrc
------

* `.vimrc` file setup for Pathogen
* Many common plugins:
  * [MatchTag](https://github.com/gregsexton/MatchTag)
  * [ctrlp.vim](https://github.com/kien/ctrlp.vim.git)
  * [closetag.vim](https://github.com/docunext/closetag.vim.git)
  * [vim-scala](https://github.com/derekwyatt/vim-scala.git)
  * [vim-json](https://github.com/elzr/vim-json.git)
  * [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized.git)
  * [taglist.vim](https://github.com/vim-scripts/taglist.vim.git)
  * [vim-fugitive](https://github.com/tpope/vim-fugitive.git)
  * [vim-trailing-whitespace](https://github.com/bronson/vim-trailing-whitespace)
  * [tagbar](https://github.com/majutsushi/tagbar.git)
  * [vim-powerline](https://github.com/Lokaltog/vim-powerline)
  * [nerdtree](https://github.com/scrooloose/nerdtree.git)
  * [vim-colorschemes](https://github.com/flazz/vim-colorschemes)

.bashrc
-------

* Color definitions
* Colorized and git aware prompt

ubuntu.sh
=========

For configuring Ubuntu systems (typically Docker containers but could be any Ubuntu system).  Contains common packages to be installed.

Run as `bash ubuntu.sh`
