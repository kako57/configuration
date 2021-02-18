syntax on

set laststatus=2
set statusline=%F%m%r%h%w\ [dec=\%3.3b]\ [hex=\%02.2B]\ [pos=%04l:%04v][%p%%\ of\ %L]
set ruler

set nowrap
set number nornu
set cc=80

set ts=4 sw=4 sts=4 et
set autoindent
autocmd BufNew,BufRead * setlocal formatoptions-=cro

set encoding=utf-8
set ffs=unix

command -nargs=0 Copy %y+
command -nargs=0 Run !%:p:r < in
command -nargs=0 Build w | make %:p:r
