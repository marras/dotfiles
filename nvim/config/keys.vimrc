" F10 = Install new plugins
nmap <F10> :PlugInstall<cr>

" NERDTree
nmap <leader>m :NERDTreeFind<cr>
nmap <c-u> :NERDTreeToggle<cr>

" Easy buffer navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l

" Decrease current window size: + / -
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif

" w!! to write a file as sudo
" stolen from Steve Losh
cmap w!! w !sudo tee % >/dev/null

set pastetoggle=<F2>

" remove current buffer without closing window
nmap <leader>d :bprevious<CR>:bdelete #<CR>

" Ack searching
nnoremap <leader>a :Ack!<space>

" Yank-Ring
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'
let g:yankring_history_dir = '~/.config/nvim/tmp'
nmap <leader>y :YRShow<cr>

" Copy the selection to the system clipboard
noremap Y "*y

" bracket match using tab
map <tab> %

" Send visual selection to gist.github.com as an anonymous Gist
" Requires the gist command line too (brew install gist)
vnoremap <leader>G :w !gist -p -t %:e \| pbcopy<cr>
