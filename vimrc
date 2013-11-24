set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdcommenter'
Bundle 'elzr/vim-json'

filetype plugin indent on

set number
syntax enable
colorscheme solarized
set expandtab
set tabstop=4
set shiftwidth=4
set mouse=nicr

:imap jj <Esc>

" folder specific vimrc
set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files


"Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

vmap <C-x> :!pbcopy<CR>  
vmap <C-c> :w !pbcopy<CR><CR> 
