set tabstop=4
set softtabstop=4
set shiftwidth=4

function! RunTests()
  let rootdir = substitute(system("git rev-parse --show-toplevel"), '[\]\|[[:cntrl:]]', '', 'g')
  execute "Dispatch -dir=".rootdir." tox -e py27"
endfunction

nnoremap <F8> :call RunTests()<CR>
