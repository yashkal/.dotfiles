""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Mappings                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remap space to leader
nnoremap <SPACE> <Nop>
let mapleader="\<SPACE>"
let maplocalleader="\\"

" Make it easier to edit .vimrc
nnoremap <LEADER>ev :vsplit $MYVIMRC<CR>
nnoremap <LEADER>sv :source $MYVIMRC<CR>
nnoremap <LEADER>ff :FZF<CR>
nnoremap <LEADER>fc :FZF ~/.dotfiles<CR>
nnoremap <LEADER>=  m'gg=G`'zz

" Insert newline
nnoremap <CR>		i<CR><ESC>
nnoremap <LEADER><CR>	O<ESC>j

" Navigations (do not center after operator pending mode)
noremap K   {zz
noremap J   }zz
noremap H   ^
noremap L   $
onoremap K  {
onoremap J  }

" Remap overwritten keys from previous mappings using leader
nnoremap <LEADER>K  K
nnoremap <LEADER>J  J
nnoremap <LEADER>H  H
nnoremap <LEADER>M  M
nnoremap <LEADER>L  L

"" Faster window navigation (including terminal mode)
"" Figure out how not to interfere with fzf
nnoremap <C-h>	<C-w><C-h>
nnoremap <C-j>	<C-w><C-j>
nnoremap <C-k>	<C-w><C-k>
nnoremap <C-l>	<C-w><C-l>
"tnoremap <C-h> <C-\><C-N><C-w>h
"tnoremap <C-j> <C-\><C-N><C-w>j
"tnoremap <C-k> <C-\><C-N><C-w>k
"tnoremap <C-l> <C-\><C-N><C-w>l

" Quick find and replace (substitute)
" Interferes with autopairs plugin
" noremap s :s//g<LEFT><LEFT>
" nnoremap S :s%//g<LEFT><LEFT>

" Quick escape in insert mode
inoremap jk <ESC>

" Make word uppercase in insert mode
inoremap <C-U>	<ESC>bgUiwea

" Zoom on panes
noremap Zz  <C-w>_ \| <C-w>\|
noremap Zo  <C-w>=

" <Esc> to exit terminal-mode
:tnoremap <Esc> <C-\><C-n>

" Simulates i_<C-R> in terminal-mode to use registers
:tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

" Function keys
map <F2>    :set paste!<CR>:echo "'paste' is set to" &paste<CR>
map <F7>    :SignifyDiff<CR>
map <F8>    :echo "Current colorscheme:" get(g:, 'colors_name', 'default')<CR>
map <F9>    :set wrap!<CR>
