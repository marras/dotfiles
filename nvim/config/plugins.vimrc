call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'kien/ctrlp.vim'
let g:ctrlp_max_files=0
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore='.git$\|^tmp/\|log$\|^public\|node_modules\|DS_Store\|chef/cookbooks'

Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ck3g/vim-change-hash-syntax'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'

Plug 'mileszs/ack.vim'

Plug 'vim-scripts/YankRing.vim'

Plug 'michaeljsmith/vim-indent-object'
let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown"]

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
nmap <leader>g :Ggrep
" ,f for global git serach for word under the cursor (with highlight)
nmap <leader>f :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>
:vmap <leader>f y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>

Plug 'scrooloose/syntastic'
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_eruby_ruby_quiet_messages = {'regex': 'possibly useless use of a variable in void context\|... interpreted as argument prefix'}
let g:syntastic_javascript_checkers = ['eslint']

Plug 'isRuslan/vim-es6'
Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

call plug#end()
