inoremap jk <Esc>

nnoremap gb :edit #<CR>

map Q gq
sunmap Q

cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <C-D> <Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

inoremap <leadre>a ä
inoremap <leadre>A Ä
inoremap <leadre>oa å
inoremap <leadre>oA Å
inoremap <leadre>o ö
inoremap <leadre>O Ö

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
