filetype plugin indent on
"set background=dark
colorscheme PaperColor

" Coc vim helper config
"source $HOME/.vim/coc.vimrc

" Ale
let g:ale_fixers = {
	    \ 'bash': ['shell', 'shfmt'],
	    \ 'html': ['prettier'],
	    \ 'javascript': ['eslint', 'prettier'],
	    \ 'python': ['isort', 'black'],
	    \ 'tex': ['latexindent'],
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

" Latex
let g:vimtex_view_method = "skim"
let g:vimtex_quickfix_mode = 0
set conceallevel=1
let g:tex_conceal = "abdmg"

" Ultisnips
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
let g:UltiSnipsListSnippets="<C-S>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

" Vim wiki
" TODO register multiple wikis
"   * For tools/tips that will be version controlled
"   * Personal one that is not version controlled
let g:vimwiki_list = [
	    \ {'path': '~/Documents/vimwiki/',
	    \ 'index': 'main',
	    \ 'auto_export': 1,
	    \ 'links_spac_char': '_',
	    \ 'ext': '.md'}
	    \]
let g:vimwiki_table_mappings = 0
