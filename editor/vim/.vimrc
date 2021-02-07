" Enable syntax highlighting
syntax on

" Enable line number
set number
set relativenumber

" Set up search
set incsearch
set ignorecase
set smartcase
set gdefault
set hlsearch

" Disable hlsearch with Ctrl-h
vnoremap <C-h> :nohlsearch<cr>
nnoremap <C-h> :nohlsearch<cr>

set showmode
set showcmd

" Enable durable undo
set undodir=~/.vim/undodir
set undofile

" Enable splitting panes
set splitright
set splitbelow

" Use clipboard as the default register
set clipboard=unnamed

" Set up wildmenu
set wildmenu
set wildmode=list:longest
set wildignore=.hg,.svn,*~,*.png,*.jpg,*.gif,*.settings,Thumbs.db,*.min.js,*.swp,publish/*,intermediate/*,*.o,*.hi,Zend,vendor

" Remap ESC to Ctrl-j
nnoremap <C-j> <Esc>
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>
snoremap <C-j> <Esc>
xnoremap <C-j> <Esc>
cnoremap <C-j> <C-c>
onoremap <C-j> <Esc>
lnoremap <C-j> <Esc>
tnoremap <C-j> <Esc>
