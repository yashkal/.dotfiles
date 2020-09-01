""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              Vim Configuration                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let $BASH_ENV = "~/.aliases"
syntax on

set number relativenumber
set numberwidth=5
set ruler
set showmatch
set textwidth=80
set visualbell

set incsearch
set smartcase
set undofile

set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

set splitbelow splitright

set undolevels=1000
set backspace=indent,eol,start

set encoding=utf-8
set path+=**
set wildmenu
set wildmode=list:full

set updatetime=100
set completeopt=longest,menuone,preview

set laststatus=2
set statusline=%f\      "tail of the filename
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
