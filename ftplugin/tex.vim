setlocal shiftwidth=2 tabstop=2 textwidth=69

augroup latex
    autocmd!
    autocmd BufWritePost *.tex,*.sty if filereadable('Makefile') | make! | redraw! | cwindow | endif
augroup END

function! OpenPdf()
    let l:target = expand('%:t:r') . '.pdf'

    if !filereadable(l:target)
        echoerr "Target PDF not found: " . l:target
        return
    endif

    silent execute '!xdg-open ' . l:target . ' &'
    redraw!
endfunction

command! View :call OpenPdf()
nmap <leader>v :View<CR>

function! Math()
    let l:save = winsaveview()

    silent! %s/→/\\rightarrow/g
    silent! %s/α/\\alpha/g
    silent! %s/β/\\beta/g
    silent! %s/γ/\\gamma/g
    silent! %s/δ/\\delta/g
    silent! %s/ε/\\epsilon/g
    silent! %s/π/\\pi/g
    silent! %s/ρ/\\rho/g
    silent! %s/∈/\\in/g
    silent! %s/−/-/g
    silent! %s/≤/\\leq/g
    silent! %s/≥/\\geq/g
    silent! %s/∞/\\infty/g

    call winrestview(l:save)
endfunction

command! Format :call Math()
nmap <leader>m :Format<CR>
