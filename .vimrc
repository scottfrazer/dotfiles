let mapleader = ","

" Tabs should be 2 spaces
set expandtab
set nocompatible
filetype off

" <Vundle>
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" </Vundle>

" <AddOns>
Bundle 'tpope/vim-fugitive'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
Bundle 'tsaleh/vim-align'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-scripts/taglist.vim'
Bundle 'derekwyatt/vim-scala'

" Colors
Bundle 'altercation/vim-colors-solarized'
Bundle 'w0ng/vim-hybrid'

Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
nmap <silent> <unique> <Leader>nt :NERDTreeToggle<CR>

Bundle 'L9'
Bundle 'FuzzyFinder'

Bundle 'ack.vim'
nnoremap <leader>a :Ack<space>

Bundle 'Lokaltog/vim-powerline'
set laststatus=2
set encoding=utf-8
let g:Powerline_symbols = 'fancy'
let g:Powerline_cache_enabled = 1
" <AddOns>

set tabstop=2
set shiftwidth=2

" Mouse use, if terminal supports it
" set mouse=a

" Terminal type... should probably match $TERM env variable
set term=ansi

" Display line numbers with a width of 6
set number
set numberwidth=6

" Syntax highlighting
syntax on

" Allow the backspace key to actually backspace
set backspace=2

" Turn the status bar on
set ruler
set rulerformat=%50(\[%t\]\ -\ line\ %l,\ column\ %c%V%=%5(%p%%%)%)

" Search as I type
set incsearch

" Highlight search results
set hlsearch

" Color Scheme for C
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="mine"

" Exuberant ctags paths
set tags=tags
nmap <silent> <unique> <Leader>ct :!ctags -x --recurse --fields=+iaS --extra=+q --languages=c,+php,+python,+java,+scala<CR>
nmap <silent> <unique> <Leader>cs :cscope -bRuq<CR>:cs a .<CR>

set t_Co=256
colorscheme hybrid
 
" Tabbing
vmap <Tab> >gv
vmap <S-Tab> <gv

" window switching mappings... use ctrl + move key to move between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-l> <C-w>l
map <C-k> <C-w>k

" Edit the vimrc file
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>sv :so $MYVIMRC<CR>

let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Show_One_File = 1
map O :TlistOpen<CR>
map C :TlistClose<CR>
map T :TlistToggle<CR>

" wildmenu settings for easier buffer switching
set wildchar=<Tab> wildmenu wildmode=list:longest
set wildcharm=<C-Z>

filetype plugin indent on
