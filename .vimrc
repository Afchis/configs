:set term=xterm-256color
:set noswapfile
:set encoding=UTF-8
:set autoindent
:set fileformat=unix
:set nu rnu
:set mouse=a
:set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
:set listchars=tab:>·,trail:~,extends:>,precedes:<,space:␣
:set list
:set foldmethod=indent
:set foldlevel=99
filetype indent on

inoremap jk <esc>


call plug#begin()

"---------=== Code/project navigation ===-------------
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'christoomey/vim-tmux-navigator'
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
Plug 'puremourning/vimspector'

call plug#end()


" Set colorscheme:
:colorscheme dracula
:colorscheme gruvbox

" VimSpector settings:
let g:vimspector_enable_mappings = 'HUMAN'

" YouCompleteMe settings
:set completeopt-=preview
let g:ycm_auto_trigger = 1


" HotKeys:
nnoremap <C-t> :NERDTreeToggle<CR>
" Enable folding with the spacebar
nnoremap <space> za
