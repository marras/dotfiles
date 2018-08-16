" Prettify JS automatically
autocmd FileType javascript set formatprg=prettier\ --stdin\ --single-quote\ --trailing-comma\ --parser=flow\ --print-width=120
autocmd BufWritePre *.js :normal gggqG
autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
