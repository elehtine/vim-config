function tex#init()
    echo "tex#init"

    echo expand('<sfile>:h:p')
    echo expand('<stack>')
    " let l:greek_file = expand('%:p:h') . '/greek.json'
    " let b:greek = json_decode(join(readfile(l:greek_file), ''))

    " echo l:greek_file
    " echo b:greek

    " for [letter, value] in items(b:greek)
    "     let l:character = value['character']
    "     let l:mapping = value['mapping']

    "     let l:command = 'inoremap <buffer><nowait><expr>'
    "     let l:lhs = '...' . l:mapping
    "     let l:rhs = escape('\' . letter, '\')
    "     echo l:command . ' ' . l:lhs  . ' ' . l:rhs
    " endfor
endfunction
