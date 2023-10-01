
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin Configuration                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

set rtp+=/opt/homebrew/opt/fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dense-analysis/ale'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/goyo.vim'
"Plugin 'SirVer/ultisnips'
Plugin 'mhinz/vim-signify'
Plugin 'honza/vim-snippets'
"Plugin 'tpope/vim-surround'
Plugin 'machakann/vim-sandwich'
Plugin 'vimwiki/vimwiki'

" Colorschemes
Plugin 'romainl/Apprentice'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'gosukiwi/vim-atom-dark'

Plugin 'lervag/vimtex'

call vundle#end()
