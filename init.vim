:set noswapfile
:set encoding=UTF-8
:set autoindent
:set fileformat=unix
" :set nu rnu
:set mouse=a
":set cursorline cursorcolumn
:set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
:set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
:set list
:set foldmethod=indent
:set foldlevel=99
filetype indent on

inoremap jk <esc>
" Enable folding with the spacebar
nnoremap <space> za

call plug#begin()

"---------=== Code/project navigation ===-------------
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
"------------------=== Other ===----------------------
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'zaki/zazen'
Plug 'yuttie/hydrangea-vim'
" Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
"---------------=== Languages support ===-------------
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --tern-completer' }

source ~/.local/share/nvim/plugged/awesome-vim-colorschemes/colors/gruvbox.vim

call plug#end()

"HotKeys:
nnoremap <C-t> :NERDTreeToggle<CR>
