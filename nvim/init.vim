call plug#begin()
" colorscheme
Plug 'chriskempson/base16-vim'

" file explorer
Plug 'kyazdani42/nvim-tree.lua'

" statusline
Plug 'nvim-lualine/lualine.nvim'

" formatting
Plug 'sbdchd/neoformat'

" indentation detection
Plug 'tpope/vim-sleuth'

" parsing
Plug 'nvim-treesitter/nvim-treesitter'

" git 
Plug 'tpope/vim-fugitive'
Plug 'APZelos/blamer.nvim'

" language server protocol
Plug 'neovim/nvim-lspconfig'

" completion and snippets
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

" fuzzy finding
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" LaTeX
Plug 'lervag/vimtex'
call plug#end()

set termguicolors
set guicursor=
set mouse=a

filetype plugin indent on

syntax on
set autoindent
set number
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set hlsearch
set ruler
set signcolumn=number
set incsearch
set hlsearch
set ignorecase
set smartcase

colorscheme base16-tomorrow-night
" colorscheme base16-tomorrow

let mapleader = " "

" autostart COQ
let g:coq_settings = { 'auto_start': 'shut-up' }

" remaps for telescope
nnoremap <leader><leader> <cmd>Telescope find_files<cr>
nnoremap <leader>/ <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>

" disable comment prefix from being added to the new line
" autocmd FileType * set fo-=cro

" enable certain files to be formatted on save
autocmd BufWritePre *.js,*.ts,*.c,*.cc,*.cpp,*.rs Neoformat
