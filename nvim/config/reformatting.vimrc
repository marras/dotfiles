" Prettify JS automatically
autocmd FileType javascript set formatprg=prettier\ --stdin\ --single-quote\ --trailing-comma\ --parser=flow
autocmd BufWritePre *.js :normal gggqG
autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
