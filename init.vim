syntax on

set laststatus=1
set number
set list lcs=tab:»\ ,trail:␣,extends:▶,precedes:◀
" eol:¬

let g:python_recommended_style=0
set ts=2 sw=2 sts=2 et
set autoindent
autocmd BufNew,BufRead * setlocal formatoptions-=cro

set encoding=utf-8
set ffs=unix

" command -nargs=0 Copy %y+
" command -nargs=0 Run !%:p:r
" command -nargs=0 Build w | make %:p:r
