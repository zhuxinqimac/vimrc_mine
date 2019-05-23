execute pathogen#infect()
filetype on
syntax on
colorscheme Tomorrow-Night
set colorcolumn=80
set number
let mapleader=" "
map <leader>s :source ~/.vimrc<cr>
"set pastetoggle=<leader>p
set pastetoggle=<F2>
nnoremap tl  :tabnext<CR>
nnoremap tj  :tabnext<CR>
nnoremap th  :tabprev<CR>
nnoremap tk  :tabprev<CR>
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
"set mouse=a
set showcmd
set scrolloff=5
nnoremap <silent> <leader>/ :nohlsearch<bar>:echo<cr>
filetype plugin on
set laststatus=2
"set noshowmode

" ==== lightline
let g:lightline = { 'colorscheme': 'wombat' }

" ==== NERDTree
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

" ==== MRU
map <leader>f :MRU<cr>
"let MRU_Max_Entries = 200

"color
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" ==== CommandT
nmap <leader>t :CommandT<CR>

" ==== Python syntax
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0
