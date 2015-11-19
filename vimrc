colorscheme hickop

set t_Co=256

syntax enable
syntax on

set expandtab
set nonumber
set incsearch
set ignorecase
set smartcase

set nocompatible
filetype plugin indent on

filetype on
:autocmd FileType sh setlocal tabstop=4 softtabstop=4 expandtab shiftwidth=4 shiftround foldmethod=indent foldignore=""
:autocmd FileType python setlocal tabstop=4 softtabstop=4 expandtab shiftwidth=4 shiftround foldmethod=indent foldignore=""
:autocmd FileType txt setlocal tabstop=4 softtabstop=4 expandtab shiftwidth=4 shiftround foldmethod=indent
:autocmd FileType html setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2 shiftround foldmethod=indent
:autocmd FileType htmldjango setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2 shiftround foldmethod=indent
:autocmd FileType R setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2 shiftround foldmethod=syntax
:autocmd FileType r setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2 shiftround foldmethod=syntax
:autocmd FileType scala setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2 shiftround
:autocmd FileType javascript setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2 shiftround foldmethod=syntax
:autocmd FileType c setlocal tabstop=4 softtabstop=4 expandtab shiftwidth=4 shiftround foldmethod=syntax
:autocmd FileType vim setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2 shiftround foldmethod=indent

imap jj <Esc>
