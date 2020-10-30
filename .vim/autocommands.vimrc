""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Autocommands                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

augroup filetype_markdown
    au!
    " this one is which you're most likely to use?
    " au BufRead,BufNewFile *.md, *.markdown setlocal filetype=markdown
    "au BufRead,BufNewFile *.md, *.markdown UltiSnipsAddFiletypes ghmarkdown.markdown
augroup end

augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown,*.mmd,README setlocal filetype=ghmarkdown
    au BufNewFile,BufRead *.md,*.markdown,*.mmd,README UltiSnipsAddFiletypes ghmarkdown.markdown
augroup END

augroup filetype_website
    au!
    au BufNewFile,BufRead *.js, *.html, *.css
		\ setlocal tabstop=2 |
		\ setlocal softtabstop=2	|
		\ setlocal shiftwidth=2	|
augroup END
