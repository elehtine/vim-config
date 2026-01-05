setlocal shiftwidth=2 tabstop=2 textwidth=69

augroup quickmath_build
    autocmd!
    autocmd BufWritePost *.tex,*.sty if filereadable('Makefile') | make | endif
augroup END

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
