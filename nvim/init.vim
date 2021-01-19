call plug#begin()
Plug 'ghifarit53/tokyonight-vim'
Plug 'vim-airline/vim-airline'
call plug#end()

syntax on

set termguicolors

let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 0
let g:tokyonight_transparent_background = 1
colorscheme tokyonight

set laststatus=2
set number
set list lcs=tab:»\ ,trail:␣,extends:▶,precedes:◀
" eol:¬

" let g:python_recommended_style=0
" let g:rust_recommended_style=0
set ts=2 sw=2 sts=2 et
set autoindent
autocmd BufNew,BufRead * setlocal formatoptions-=cro

set encoding=utf-8
set ffs=unix

command -nargs=0 Copy %y+
command -nargs=0 Run !%:p:r
command -nargs=0 Build w | make %:p:r
