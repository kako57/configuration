call plug#begin()
" base16-vim for color schemes
Plug 'chriskempson/base16-vim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

" fuzzy finder (files, grep, buffer, help)
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" autoformatting
Plug 'sbdchd/neoformat'

" syntax stuff
Plug 'nvim-treesitter/nvim-treesitter'

" indent stuff
Plug 'tpope/vim-sleuth'
" Plug 'lukas-reineke/indent-blankline.nvim'

" git stuff
Plug 'tpope/vim-fugitive'
Plug 'APZelos/blamer.nvim'

" statusline
Plug 'nvim-lualine/lualine.nvim'

" language server protocol
Plug 'neovim/nvim-lspconfig'

" completion
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

" for some reason everybody want these icons
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab
set autoindent
set fileformat=unix
" set signcolumn=yes
set cursorline
" set cursorcolumn
" set colorcolumn=80,100

set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

let g:catppuccin_flavour = "mocha" " latte, frappe, macchiato, mocha
colo catppuccin
" colo base16-grayscale-dark
" highlight Comment ctermfg=green guifg=#00FF00

" dev shells
" command! Cmd terminal dev_cmd
" command! CommandPrompt terminal dev_cmd
" command! Pwsh terminal dev_pwsh
" command! Powershell terminal dev_pwsh
" command! Wsl terminal dev_wsl
" command! WSL terminal dev_wsl
" command! Terminal terminal dev_pwsh

" use ESC to leave terminal mode
tnoremap <ESC> <C-\><C-n>

let mapleader = " "

" Find files using Telescope command-line sugar.
nnoremap <leader><space> <cmd>Telescope find_files<cr>
nnoremap <leader>/ <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>

" open config
nnoremap <leader>fp <cmd>Explore ~/.config/nvim<cr>

" set font for neovide
set guifont=JetBrains\ Mono:h10

" let g:python3_host_prog = "C:/Python310/python.exe"

" autostart COQ
let g:coq_settings = { 'auto_start': 'shut-up' }

" add a keymap for fullscreen
function Neovide_fullscreen()
    if g:neovide_fullscreen == v:true
        let g:neovide_fullscreen=v:false
    else
        let g:neovide_fullscreen=v:true
    endif
endfunction
map <F11> :call Neovide_fullscreen()<cr>

" disable neovide cursor animation
let g:neovide_cursor_animation_length=0
let g:neovide_cursor_trail_length=0

augroup fmt
  autocmd!
  " autocmd BufWritePre * undojoin | Neoformat
  autocmd BufWritePre * Neoformat
augroup END
