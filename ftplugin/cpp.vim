setlocal shiftwidth=2 tabstop=2
setlocal path=,,.,src/**
setlocal cinoptions+=j1

let s:counter = 1
function Commit()
    let s:message = "commit " . s:counter
    let s:counter = s:counter + 1
    execute "!git commit -am \"" . s:message . "\""
endfunction

augroup git
    autocmd!
    autocmd BufWritePost * call Commit()
augroup END

augroup git
    autocmd!
augroup END
