setlocal shiftwidth=2 tabstop=2 textwidth=69

augroup pdf
    autocmd!
    autocmd BufWritePost *.tex make
augroup END

" let s:greek_file = expand('<sfile>:h') . '/greek.json'
" let s:greek = json_decode(join(readfile(s:greek_file), ''))
" 
" echo s:greek_file
" echo s:greek
" 
" for [letter, value] in items(s:greek)
"     let s:character = value['character']
"     let s:mapping = value['mapping']
" 
"     let s:command = 'inoremap <buffer><nowait><expr>'
"     let s:lhs = '...' . s:mapping
"     let s:rhs = escape('\\' . letter, '\')
"     execute s:command . ' ' . s:lhs  . ' ' . s:rhs
" endfor
" 
" function FixCopy()
"     for [letter, value] in items(s:greek)
"         let l:greek = value['greek']
"         let l:mapping = value['mapping']
" 
"         let l:command = 'inoremap <buffer><nowait><expr>'
"         let l:lhs = '...' . l:mapping
"         let l:rhs = escape('\' . letter, '\')
"         echo l:command . ' ' . l:lhs  . ' ' . l:rhs
"     endfor
" endfunction
" 
" command FixCopy call FixCopy()
