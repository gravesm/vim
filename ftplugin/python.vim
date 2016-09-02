set tabstop=4
set softtabstop=4
set shiftwidth=4

let b:dispatch = 'tox -e py27 -- --tb=line'
nnoremap <F8> :Dispatch<CR>
