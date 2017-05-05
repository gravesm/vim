set tabstop=4
set softtabstop=4
set shiftwidth=4

nnoremap <leader>m :ProjectRootExe Make<CR>
nnoremap <leader>M :ProjectRootExe Make!<CR>
nnoremap <leader>b oimport pdb; pdb.set_trace()<ESC>:w<CR>
nnoremap <leader>d :ProjectRootExe !make test<CR>
