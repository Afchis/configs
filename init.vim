:set noswapfile
:set encoding=UTF-8
:set autoindent
:set fileformat=unix
:set nu rnu
:set mouse=a
":set cursorline cursorcolumn
:set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
:set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
:set list
filetype indent on

inoremap jk <esc>


call plug#begin()

"------------------=== Other ===----------------------
Plug 'rafi/awesome-vim-colorschemes'
"Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
"---------=== Code/project navigation ===-------------
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
"---------------=== Languages support ===-------------
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'valloric/youcompleteme'

source ~/.local/share/nvim/plugged/awesome-vim-colorschemes/colors/gruvbox.vim


"HotKeys:
nnoremap <C-t> :NERDTreeToggle<CR>
