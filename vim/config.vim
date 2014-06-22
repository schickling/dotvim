syntax enable
colorscheme solarized
set background=dark
set number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set visualbell
set noerrorbells
set laststatus=2
set backspace+=start,eol,indent 
set cursorline
set autochdir
set shell=/bin/bash " Fix path"

" never fold
set nofoldenable
au BufRead * normal zR

" undo history
set hidden " persist undo history
set undofile
set undodir=$HOME/.vimundo

let mapleader = ","
set clipboard=unnamed
set visualbell
set noerrorbells
set mouse=a

" Remember last cursor position
function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END

" filetypes
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Guardfile,config.ru,*.rake} set ft=ruby
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown
au BufRead,BufNewFile *.{js} set colorcolumn=80

" prevent ag terminal output
set shellpipe=>

" Hastbin
noremap <leader>c :Sprunge<CR>

" Toggles the background color, and reloads the colorscheme.
command! ToggleBackground call <SID>ToggleBackground()
function! <SID>ToggleBackground()
    let &background = ( &background == "dark"? "light" : "dark" )
    if exists("g:colors_name")
        exe "colorscheme " . g:colors_name
    endif
endfunction

noremap <leader>\ :ToggleBackground<CR>


let g:haskell_conceal_wide = 1

filetype plugin on
