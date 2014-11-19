execute pathogen#infect()

let mapleader = ","
let g:solarized_termcolors=256

syntax enable
filetype plugin indent on
set expandtab
set nocompatible
set pastetoggle=<leader>p
set tabstop=2
set shiftwidth=2
set number
set numberwidth=6
set backspace=2
set incsearch
set hlsearch
set tags=tags
set t_Co=256
set background=dark
colorscheme solarized
vmap <Tab> >gv
vmap <S-Tab> <gv
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-l> <C-w>l
map <C-k> <C-w>k
map <silent> <unique> <leader>a 5<c-w><
map <silent> <unique> <leader>f 5<c-w>>
map <silent> <unique> <leader>s 5<c-w>+
map <silent> <unique> <leader>d 5<c-w>-

" Command-T
noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>t <Esc>:CommandTBuffer<CR>

" Closetag
autocmd FileType html,xml let b:closetag_html_style=1
autocmd FileType html,xml source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

" NerdTree
nmap <silent> <unique> <leader>nt :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" PowerLine
set laststatus=2
set encoding=utf-8
let g:Powerline_symbols = 'fancy'
let g:Powerline_cache_enabled = 1

" TagBar
nmap <silent> <unique> <leader>tb :TagbarToggle<CR>

" TagList
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Show_One_File = 1
map O :TlistOpen<CR>
map C :TlistClose<CR>
map T :TlistToggle<CR>

" ctags
nmap <silent> <unique> <leader>ct :!ctags --recurse --fields=+iaS --extra=+q --languages=java,scala<CR>

" ctrl-p
let g:ctrlp_map = '<leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

" syntastic
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [], 'passive_filetypes': ['html'] }
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
noremap <leader>e <Esc>:Errors<CR>

" fugitive
nmap <silent> <unique> <leader>gs :Gstatus<CR>
nmap <silent> <unique> <leader>gb :Gblame<CR>
nmap <silent> <unique> <leader>gl :Git lgg<CR>

" vim-json
let g:vim_json_syntax_conceal = 0
