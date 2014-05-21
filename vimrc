set nocompatible

" Color scheme
syntax enable
colorscheme molokai
" let g:molokai_original = 1
" let g:rehash256 = 1

set ruler
set showcmd
set scrolloff=5
set showmatch

filetype plugin indent on

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Set to auto read when a file is changed from the outside
set autoread

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Make search act properly
set ignorecase
set smartcase
set hlsearch
set incsearch

" Numbers
set number
set numberwidth=5

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

" Turn backup off, since most stuff is in SVN, git et.c anyway...
" set nobackup
" set nowb
" set noswapfile

" Always show the status line
set laststatus=2

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
