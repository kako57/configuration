syntax enable

set termguicolors
set mouse=a
set guicursor=
set number

set ts=2 sw=2 sts=2 et
filetype plugin indent on
autocmd BufNew,BufRead * setlocal formatoptions-=cro

set encoding=utf-8
set ffs=unix

command! -nargs=0 Copy %y+
command! -nargs=0 Run !./%:r < in
command! -nargs=0 Build w | make %:r

call plug#begin()
Plug 'vim-airline/vim-airline'
call plug#end()

autocmd VimLeave * guicursor=
