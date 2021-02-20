syntax on

set laststatus=0
set ruler

set nowrap
set number nornu
set cc=80

set ts=2 sw=2 sts=2 et
set autoindent
autocmd BufNew,BufRead * setlocal formatoptions-=cro

let g:loaded_python_provider=0
let g:loaded_python3_provider=0

set encoding=utf-8
set ffs=unix

command -nargs=0 Copy %y+
command -nargs=0 Run !%:p:r < in
command -nargs=0 Build w | make %:p:r
