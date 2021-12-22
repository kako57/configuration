call plug#begin()
Plug 'chriskempson/base16-vim'

" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lualine/lualine.nvim'

Plug 'sbdchd/neoformat'

Plug 'tpope/vim-sleuth'

" Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter'

" Plug 'github/copilot.vim'

" Git stuff
Plug 'tpope/vim-fugitive'
Plug 'APZelos/blamer.nvim'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'

" coq +snippets
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

set termguicolors
set guicursor=
set mouse=a

filetype plugin indent on

syntax on
set autoindent
set number
set tabstop=8
set softtabstop=2
set shiftwidth=2
set hlsearch
set ruler
set signcolumn=number

set background=dark
" colo peachpuff
colo base16-tomorrow-night

let mapleader = " "

" autostart COQ
let g:coq_settings = { 'auto_start': 'shut-up' }

" remaps for telescope
nnoremap <leader><leader> <cmd>Telescope find_files<cr>
nnoremap <leader>/ <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>

" disable comment prefix from being added to the new line
autocmd FileType * set fo-=cro

" enable certain files to be formatted on save
autocmd BufWritePre *.js,*.ts,*.c,*.cc,*.cpp,*.rs Neoformat
