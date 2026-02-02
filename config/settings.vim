set backspace=indent,eol,start

set history=200
set ruler
set showcmd
set wildmenu
set number
set hidden
set scrolloff=1
set nrformats-=octal
set complete-=i

set matchpairs+=<:>
set diffopt+=vertical

set ttimeout
set ttimeoutlen=100
set display=truncate

set shiftwidth=4 tabstop=4 expandtab autoindent nosmartindent
set textwidth=78

set path=.,,

syntax enable
filetype plugin indent on


let s:root = expand('<sfile>:p:h:h')
let s:templates = s:root . '/templates'

function! s:LoadMakefile()
    let choices = ['Select Layout:', '1. C++ (Default)', '2. LaTeX']
    let idx = inputlist(choices)
    let tpl = (idx == 2) ? 'Makefile.tex' : 'Makefile.cpp'
    execute 'silent! 0read ' . s:templates . '/' . tpl | $delete
endfunction

augroup template
    autocmd!
    autocmd BufNewFile * execute 'silent! 0read ' . s:templates . '/skeleton.%:e' | $delete

    autocmd BufNewFile .gitignore execute 'silent! 0read ' . s:templates . '/gitignore' | $delete
    autocmd BufNewFile .clang-format execute 'silent! 0read ' . s:templates . '/clang-format' | $delete
    autocmd BufNewFile CMakeLists.txt execute 'silent! 0read ' . s:templates . '/CMakeLists.txt' | $delete
    autocmd BufNewFile Makefile call s:LoadMakefile()
augroup END
