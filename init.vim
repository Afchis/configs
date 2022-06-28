:set noswapfile
:set encoding=UTF-8
:set autoindent
:set fileformat=unix
:set nu rnu
:set mouse=a
":set cursorline cursorcolumn
:set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
:set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
:set list
filetype indent on

inoremap jk <esc>


call plug#begin()

Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
"Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

source ~/.local/share/nvim/plugged/awesome-vim-colorschemes/colors/gruvbox.vim


"HotKeys:
nnoremap <C-t> :NERDTreeToggle<CR>
