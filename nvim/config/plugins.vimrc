call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'kien/ctrlp.vim'
let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore='.git$|^tmp/|log$|^public'

Plug 'flazz/vim-colorschemes'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
