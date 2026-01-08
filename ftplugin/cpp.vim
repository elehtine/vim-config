setlocal shiftwidth=2 tabstop=2
setlocal path=,,.,src/**
setlocal cinoptions+=j1
setlocal formatprg=clang-format\ -style=file


if !exists('s:counter') | let s:counter = 1 | endif

function! s:GitSave()
    let l:msg = "commit " . s:counter
    let s:counter += 1
    silent! execute '!git commit -am "' . l:msg . '"'
    redraw!
    echo "Git: " . l:msg
endfunction

function! s:Toggle()
    if exists('#AutoGit#BufWritePost')
        augroup AutoGit | autocmd! | augroup END
        echo "AutoCommit: OFF"
    else
        augroup AutoGit
            autocmd!
            autocmd BufWritePost <buffer> call s:GitSave()
        augroup END
        echo "AutoCommit: ON"
    endif
endfunction

command! -buffer AutoCommit call s:Toggle()
