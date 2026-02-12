nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>

function! s:GrepOperator(type)
  let l:saved_register = getreg('"')
  let l:saved_type = getregtype('"')

  if a:type ==# 'v'
    execute "normal! `<v`>y"
  elseif a:type ==# 'char'
    execute "normal! `[v`]y"
  else
    return
  endif

  silent execute "grep! -R " . shellescape(@@) . " ."
  copen

  call setreg('"', l:saved_register, l:saved_type)
endfunction
