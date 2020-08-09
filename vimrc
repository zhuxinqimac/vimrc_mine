execute pathogen#infect()
filetype on
syntax on
colorscheme Tomorrow-Night
set colorcolumn=80
set number
let mapleader=" "
nnoremap <leader>s :source ~/.vimrc<cr>
"set pastetoggle=<leader>p
set pastetoggle=<F2>
nnoremap tl  :tabnext<CR>
nnoremap tj  :tabnext<CR>
nnoremap th  :tabprev<CR>
nnoremap tk  :tabprev<CR>
nnoremap <leader>o  :only<CR>
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
set bs=2
set spell spelllang=en_us

let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

" Ctrl-j/k inserts blank line below/above.
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Indent last parenthese
"nnoremap <silent><C-i> $i<CR><ESC>k

" ==== lightline
let g:lightline = { 'colorscheme': 'wombat' }

" ==== NERDTree
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>j :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$']

" autocmd
autocmd bufnewfile *.py so /home/xqzhu/.vim/headers/head_python.txt
autocmd bufnewfile *.py exe "1," . 13 . "g/--- File Name:.*/s//--- File Name: " .expand("%:t")
autocmd bufnewfile *.py exe "1," . 13 . "g/--- Creation Date:.*/s//--- Creation Date: " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.py execute "normal ma"
autocmd Bufwritepre,filewritepre *.py exe "1," . 13 . "g/--- Last Modified:.*/s/--- Last Modified:.*/--- Last Modified: " .strftime("%c")
autocmd bufwritepost,filewritepost *.py execute "normal `a"

" abbreviations
ab admain r /home/xqzhu/.vim/headers/main_python.txt
ab adclass r /home/xqzhu/.vim/headers/class_python.txt

" ==== MRU
nnoremap <leader>f :MRU<cr>
"let MRU_Max_Entries = 200

"color
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" ==== CommandT
nnoremap <leader>t :CommandT<CR>

" ==== Python syntax
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

" ==== Rainbow parentheses
let g:rainbow_active = 1
"set to 0 if you want to enable it later via :RainbowToggle

" ==== YouCompleteMe
nnoremap <leader>to :YcmCompleter GoTo<CR>
nnoremap <leader>tol :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>tod :YcmCompleter GoToDefinition<CR>
nnoremap <leader>doc :YcmCompleter GetDoc<CR>
nnoremap <leader>tp :YcmCompleter GetType<CR>
let g:ycm_complete_in_comments = 1

" ==== Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"hi SpellBad ctermfg=236 ctermbg=155 guifg=#303030 guibg=#afff5f
hi SpellCap ctermfg=236 ctermbg=051 guifg=#303030 guibg=#00ffff

" ==== autoformat
let g:autoformat_autoindent = 0
let g:formatter_yapf_style = 'pep8'
nnoremap fw :Autoformat <bar> :w<CR>

" ==== auto-pair
let g:AutoPairsFlyMode = 0
