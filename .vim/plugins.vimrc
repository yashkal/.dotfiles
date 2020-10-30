""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin Configuration                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

set rtp+=/usr/local/opt/fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"if has('nvim')
"    Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"    Plugin 'Shougo/deoplete.nvim'
"    Plugin 'roxma/nvim-yarp'
"    Plugin 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1
Plugin 'dense-analysis/ale'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'deoplete-plugins/deoplete-jedi'
Plugin 'junegunn/goyo.vim'
"Plugin 'davidhalter/jedi-vim'
Plugin 'SirVer/ultisnips'
Plugin 'mhinz/vim-signify'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'vimwiki/vimwiki'
" Colorschemes
Plugin 'romainl/Apprentice'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'gosukiwi/vim-atom-dark'

Plugin 'neoclide/coc.nvim', {'branch': 'release'}
call vundle#end()

filetype plugin indent on
"set background=dark
colorscheme PaperColor

" Coc vim helper config
source $HOME/.vim/coc.vimrc

" Ale
let g:ale_fixers = {
	    \ 'bash': ['shell', 'shfmt'],
	    \ 'html': ['prettier'],
	    \ 'javascript': ['eslint', 'prettier'],
	    \ 'python': ['isort', 'black'],
	    \ '*': ['remove_trailing_lines', 'trim_whitespace']
	    \ }
" Ignore line length for python
let g:ale_python_flake8_options="--extend-ignore=E501"
let g:ale_fix_on_save=1
" augroup filetype_bash_dotfiles
"     au!
"     au BufNewFile,BufRead *.bashrc,*.aliases
" 	set filetype=bash
" 	" let g:ale_bash_shellcheck_options="-s bash"
" augroup END

" Jedi
let g:jedi#documentation_command="<LEADER>K"

" Ultisnips
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
let g:UltiSnipsListSnippets="<C-S>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

" Vim wiki
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_table_mappings = 0
