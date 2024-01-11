set backspace=indent,eol,start

set history=200
set ruler
set showcmd
set wildmenu
set number
set hidden
set scrolloff=1
set nrformats-=octal

set matchpairs+=<:>
set diffopt+=vertical

set ttimeout
set ttimeoutlen=100
set display=truncate

set shiftwidth=4 tabstop=4 expandtab autoindent
set textwidth=78

syntax enable
filetype plugin indent on

augroup template
    autocmd!
    autocmd BufNewFile * silent! 0read $HOME/.vim/templates/%:e.tmpl
    autocmd BufNewFile Makefile silent! 0read $HOME/.vim/templates/Makefile
augroup END
