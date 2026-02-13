inoremap jk <Esc>

nnoremap gb :edit #<CR>

noremap Q gq
sunmap Q

cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <C-D> <Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

inoremap <leader>a ä
inoremap <leader>A Ä
inoremap <leader>oa å
inoremap <leader>oA Å
inoremap <leader>o ö
inoremap <leader>O Ö

nnoremap <leader>w :match Error /\v +$/<cr>
nnoremap <leader>W :match none<cr>

nnoremap <leader>n :setlocal number!<cr>

augroup vimHints
    au!
    autocmd CmdwinEnter *
                \ echohl Todo |
                \ echo gettext('You discovered the command-line window! You can close it with ":q".') |
                \ echohl None
augroup END

abbreviate prettier Prettier
abbreviate javascript JavaScript
abbreviate typescript TypeScript
