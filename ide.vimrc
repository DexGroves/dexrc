set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Leader key
:let mapleader = " "

" split navigations. Doesn't work. Not sure why
" map <leader>DOWN<C-W><C-J>
" map <leader>UP <C-W><C-K>
" map <leader>LEFT <C-W><C-L>
" map <leader>RIGHT <C-W><C-H>

set splitbelow
set splitright

" Python language stuff
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=119 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

Plugin 'vim-scripts/indentpython.vim'

" Highlight bad whitespace
highlight UnwanttedTab ctermbg=red guibg=darkred
highlight TrailSpace guibg=red ctermbg=darkred

match UnwanttedTab /\t/
match TrailSpace / \+$/

autocmd ColorScheme * highlight UnwanttedTab ctermbg=red guibg=darkred
autocmd ColorScheme * highlight TrailSpace guibg=red ctermbg=darkred

" UTF-8
set encoding=utf-8

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>b  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Python syntax
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
autocmd FileType python map <buffer> <leader>p :call Flake8()<CR>

let python_highlight_all=1
syntax on

" Colorscheme
Plugin 'jnurmine/Zenburn'
" colorscheme zenburn

" Line numbers
set nu

" Powerline
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" NERDTree
Plugin 'scrooloose/nerdtree'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" ctrlp
Plugin 'kien/ctrlp.vim'

" Theeeemes
Plugin 'cohlin/vim-colorschemes'
" Airline theme
let g:airline_theme = "darcula"

" Vim colorscheme
colorscheme py-darcula

" Relative line nombres
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
