" _. Ruby {{{
if count(g:packages, 'ruby')
    Bundle 'vim-ruby/vim-ruby'
    Bundle 'tpope/vim-rails'
    Bundle 'nelstrom/vim-textobj-rubyblock'
    Bundle 'ecomba/vim-ruby-refactoring'

    autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
endif
" }}}

" _. HTML {{{
if count(g:packages, 'html')
    Bundle 'tpope/vim-haml'
    Bundle 'juvenn/mustache.vim'
" }}}

" _. CSS {{{
    Bundle 'groenewege/vim-less'
" }}}
endif

" _. JS {{{
if count(g:packages, 'js')
    Bundle 'kchmck/vim-coffee-script'
    Bundle 'isRuslan/vim-es6'
endif
" }}}

" _. Clojure {{{ 
if count(g:packages, 'clojure')
    Bundle 'zaiste/VimClojure'

    let vimclojure#HighlightBuiltins=1
    let vimclojure#ParenRainbow=0
endif
" }}}

" _. Haskell {{{
if count(g:packages, 'haskell')
    Bundle 'Twinside/vim-syntax-haskell-cabal'
    Bundle 'lukerandall/haskellmode-vim'

    au BufEnter *.hs compiler ghc

    let g:ghc = "/usr/local/bin/ghc"
    let g:haddock_browser = "open"
endif
" }}}
