filetype on
syntax on
colorscheme Tomorrow-Night
set colorcolumn=80
set number
let mapleader=" "
map <leader>s :source ~/.vimrc<cr>
set hidden
set history=1000
filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set encoding=utf-8
set smartindent
set autoindent
set hlsearch
set mouse=a
set showcmd
set scrolloff=5
nnoremap <silent> <leader>/ :nohlsearch<bar>:echo<cr>
execute pathogen#infect()
filetype plugin on
set laststatus=2
"set noshowmode

" ==== lightline
let g:lightline = { 'colorscheme': 'wombat' }

" ==== NERDTree
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <leader>t :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

" ==== MRU
map <leader>f :MRU<cr>
"let MRU_Max_Entries = 200
