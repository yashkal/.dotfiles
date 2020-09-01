""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Autocommands                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup filetype_vim
    au!
    au FileType vim nnoremap <buffer> <LOCALLEADER>c I"\ <ESC>
    au BufNewFile,BufRead *.js, *.html, *.css
		\ setlocal tabstop=2 |
		\ setlocal softtabstop=2	|
		\ setlocal shiftwidth=2	|
augroup END

augroup filetype_python
    au!
    au FileType python nnoremap <buffer> <LOCALLEADER>c I#\ <ESC>
    au BufNewFile,BufRead *.py
		\ setlocal tabstop=4 |
		\ setlocal softtabstop=4	|
		\ setlocal shiftwidth=4	|
		\ setlocal textwidth=79	|
		\ setlocal expandtab |
		\ setlocal autoindent	|
		\ setlocal fileformat=unix   |
augroup END

augroup filetype_website
    au!
    au BufNewFile,BufRead *.js, *.html, *.css
		\ setlocal tabstop=2 |
		\ setlocal softtabstop=2	|
		\ setlocal shiftwidth=2	|
augroup END

