let mapleader = ","

" Tabs should be 2 spaces
set expandtab
set tabstop=4
set shiftwidth=4
set path+=/home/sfrazer/sites/framework/test
set path+=/home/sfrazer/sites/framework/htdocs

" Mouse use, if terminal supports it
set mouse=a

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
set tags=$FRAMEWORK/tags,tags
nmap <silent> <unique> <Leader>ct :!ctags --recurse --fields=+iaS --extra=+q --languages=c,+php,+python<CR>
nmap <silent> <unique> <Leader>cs :cscope -bRuq<CR>:cs a .<CR>

set t_Co=256
colorscheme leo
 
" Tabbing
vmap <Tab> >gv
vmap <S-Tab> <gv

" Taglist plugin
filetype plugin on
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Show_One_File = 1
map O :TlistOpen<CR>
map C :TlistClose<CR>
map T :TlistToggle<CR>


" NERDTree plugin
nmap <silent> <unique> <Leader>nt :NERDTreeToggle<CR>

" window switching mappings... use ctrl + move key to move between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-l> <C-w>l
map <C-k> <C-w>k

" Edit the vimrc file
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>sv :so $MYVIMRC<CR>

" wildmenu settings for easier buffer switching
set wildchar=<Tab> wildmenu wildmode=list:longest
set wildcharm=<C-Z>
