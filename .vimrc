:set term=xterm-256color
:set colorcolumn=80
:highlight ColorColumn ctermbg=white
let python_highlight_all=1
:set wildmenu
:set ttymouse=sgr
:set mouse=a
:set nobackup
:set noswapfile
:set encoding=UTF-8
:set autoindent
:set fileformat=unix
:set nu rnu
:set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
:set listchars=tab:>·,trail:~,extends:>,precedes:<,space:␣
:set list
:set foldmethod=indent
:set foldlevel=99
filetype indent on

inoremap jk <esc>
inoremap kj <esc>


call plug#begin()

"---------=== Code/project navigation ===-------------
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'christoomey/vim-tmux-navigator'
"------------------=== Other ===----------------------
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'yuttie/hydrangea-vim'
" Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
"---------------=== Languages support ===-------------
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python'}

call plug#end()


" Set colorscheme:
:colorscheme dracula
:colorscheme gruvbox

" VimSpector settings:
let g:vimspector_enable_mappings = 'HUMAN'
:command initspector "!mv ~/.vimspector.json ./.vimspector.json"
nnoremap <leader>ss :call vimspector#Launch()<CR>
nnoremap <leader>sr :call vimspector#Reset()<CR>
nnoremap <leader>sc :call vimspector#Continue()<CR>
nnoremap <Leader>st :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>sT :call vimspector#ClearBreakpoints()<CR>

nmap <Leader>sk <Plug>VimspectorRestart
nmap <Leader>sh <Plug>VimspectorStepOut
nmap <Leader>sl <Plug>VimspectorStepInto
nmap <Leader>sj <Plug>VimspectorStepOver


" YouCompleteMe settings
:set completeopt-=preview
let g:ycm_auto_trigger = 0.5


" HotKeys:
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Enable folding with the spacebar
nnoremap <space> za
