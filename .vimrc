colorscheme hickop

set t_Co=256

syntax enable
syntax on

set expandtab
set nonumber
set incsearch
set ignorecase
set smartcase

:autocmd BufEnter * highlight OverLength ctermbg=darkgrey
:autocmd BufEnter * match OverLength /\%80v.*/

set nocompatible
filetype plugin indent on

filetype on
:autocmd FileType sh setlocal tabstop=4 softtabstop=4 expandtab shiftwidth=4 shiftround
:autocmd FileType python setlocal tabstop=4 softtabstop=4 expandtab shiftwidth=4 shiftround
:autocmd FileType txt setlocal tabstop=4 softtabstop=4 expandtab shiftwidth=4 shiftround
:autocmd FileType html setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2 shiftround
:autocmd FileType htmldjango setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2 shiftround
:autocmd FileType R setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2 shiftround
:autocmd FileType r setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2 shiftround
:autocmd FileType scala setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2 shiftround
:autocmd FileType javascript setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2 shiftround
:autocmd FileType c setlocal tabstop=4 softtabstop=4 expandtab shiftwidth=4 shiftround
:autocmd FileType vim setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2 shiftround

imap jj <Esc>
