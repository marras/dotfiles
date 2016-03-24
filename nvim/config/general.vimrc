let mapleader = ","
let maplocalleader = "\\"

syntax on

" Basic settings
filetype off

set autoread 
set backspace=indent,eol,start
set binary
set cinoptions=:0,(s,u0,U1,g0,t0
set completeopt=longest,menuone,preview
set hidden 
set history=1000
set incsearch 
set laststatus=2 
set list
set encoding=utf-8

set listchars=tab:▸\ ,extends:❯,precedes:❮

set notimeout
set ttimeout
set ttimeoutlen=10

set backupdir=~/.config/nvim/tmp/backup// " backups
set directory=~/.config/nvim/tmp/swap//   " swap files

set backup 
set noswapfile 
set modelines=0 
set noeol
set shell=/bin/bash
set showcmd 
set matchtime=2

" White characters
set autoindent
set tabstop=2
set textwidth=80
set shiftwidth=2
set softtabstop=2
set expandtab
set wrap
set formatoptions=qrn1
set novisualbell  " use the sound

 autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Only show cursorline in the current window and in normal mode.
augroup cline
    au!
    au WinLeave * set nocursorline
    au WinEnter * set cursorline
    au InsertEnter * set nocursorline
    au InsertLeave * set cursorline
augroup END

" Trailing whitespace - Only shown when not in insert mode
augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:⌴
    au InsertLeave * :set listchars+=trail:⌴
augroup END

hi CursorLine cterm=NONE,underline
au BufRead,BufNewFile *.hamlc set ft=haml

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Searching
nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase
set showmatch
set gdefault " substitute globally by default
set hlsearch

" Wildcards
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc,public,chef/cookbooks
set wildmenu
