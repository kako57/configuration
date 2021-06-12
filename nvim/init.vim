call plug#begin()
" bruh, the flight stewardess is getting suspicious
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" of course, you'll stop stalking tomorrow, right? yeah right
Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim'}

" know all languages to increase your chances of getting good information
Plug 'sheerun/vim-polyglot'

" figure out indentation like the stalker you are
Plug 'tpope/vim-sleuth'

" when your third leg is smarter than your head
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" to stalk on people from downtown
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" you gotta keep track of the places you went; at least the last place you noob
Plug 'farmergreg/vim-lastplace'
call plug#end()

let mapleader = " "

syntax enable
colo Tomorrow-Night-Bright
hi Normal guibg=NONE ctermbg=NONE

" Uncomment line below to avoid autoinserting comment prefix
" autocmd BufNew,BufRead * setlocal formatoptions-=cro

" user-defined command to copy whole buffer
command -nargs=0 C %y+
" command -nargs=0 Run !%:p:r < in
" command -nargs=0 Build w | make %:p:r
