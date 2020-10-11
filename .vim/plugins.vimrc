""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin Configuration                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ale
let g:ale_fixers = {
	    \ 'bash': ['shell', 'shfmt'],
	    \ 'html': ['prettier'],
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
