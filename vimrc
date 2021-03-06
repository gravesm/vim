set nocompatible
filetype off
scriptencoding utf-8
set encoding=utf-8
set fileformat=unix

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'nvie/vim-flake8'
Plugin 'sukima/xmledit'
Plugin 'tpope/vim-dispatch'
Plugin 'fatih/vim-go'
Plugin 'dbakker/vim-projectroot'
Plugin 'valloric/YouCompleteMe'
Plugin 'sjl/gundo.vim'
Plugin 'mileszs/ack.vim'
Plugin 'lepture/vim-jinja'
Plugin 'haya14busa/incsearch.vim'

" Color schemes
Plugin 'nanotech/jellybeans.vim'
Plugin 'tomasr/molokai'
Plugin 'sickill/vim-monokai'
Plugin 'w0ng/vim-hybrid'

call vundle#end()
filetype plugin indent on

syntax enable

let mapleader = ","

set history=1000
set noshowmode

set undodir=~/.vim/.undo//
set undofile
set directory=~/.vim/.swp//
set backupdir=~/.vim/.backup//
set backup

set backspace=indent,eol,start

" Global TAB settings
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent

set wrap
set linebreak
set breakindent

" Navigate wrapped lines visually
nnoremap j gj
nnoremap k gk

set number " show line numbers
set showmatch " highlight matching brackets

" Highlight unwanted whitespace
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set wildmenu
set wildmode=list:longest,full

" Keep this many lines above/below cursor
set scrolloff=3

set mouse=a
set ttymouse=xterm2

set background=dark
colorscheme jellybeans

" Airline config
set laststatus=2
let g:airline_powerline_fonts = 1

" Ctrl-P config
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Flake8 config
let g:flake8_show_in_gutter=1
let g:flake8_show_in_file=1

" Gitgutter config
let g:gitgutter_eager=0
let g:gitgutter_realtime=0
"set updatetime=250

" Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

set colorcolumn=80
highlight ColorColumn ctermbg=234

set autochdir

set foldlevel=99

" copy in vim will be available in system clipboard
set clipboard=unnamedplus

" turn off recording
map q <Nop>

" Git commands
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>

" Navigate quick fix
nnoremap [q :cnext<CR>
nnoremap ]q :cprev<CR>

" YCM GoTo
nnoremap <leader>gt :YcmCompleter GoTo<CR>

" Gundo needs this to work with python3
let g:gundo_prefer_python3 = 1
nnoremap <leader>u :GundoToggle<CR>

" ag search with ack.vim
let g:ackprg = 'ag --vimgrep'
nnoremap <leader>s :Ack<Space>

" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n <Plug>(incsearch-nohl-n)
map N <Plug>(incsearch-nohl-N)
