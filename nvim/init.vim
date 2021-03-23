" call plug#begin()
" " Plug 'ayu-theme/ayu-vim'
" " Plug 'vim-airline/vim-airline'
" " Plug 'vim-airline/vim-airline-themes'
" call plug#end()

syntax on

set ttimeoutlen=0

set termguicolors
" let ayucolor="dark"
" colorscheme ayu

" set laststatus=0
set ruler

set number norelativenumber
set colorcolumn=80

set ts=2 sw=2 sts=2 et
set autoindent
autocmd BufNew,BufRead * setlocal formatoptions-=cro

set encoding=utf-8
set ffs=unix

command -nargs=0 Copy %y+
command -nargs=0 Run !%:p:r < in
command -nargs=0 Build w | make %:p:r
