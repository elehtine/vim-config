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


syntax enable
filetype plugin indent on

setlocal shiftwidth=4 tabstop=4 expandtab autoindent

autocmd BufNewFile * silent! 0r $HOME/.vim/templates/%:e.tpl
