inoremap jk <Esc>

map Q gq
sunmap Q

cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <C-D> <Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>


" Characters in Finnish
inoremap ,a ä
inoremap ,A Ä
inoremap ,oa å
inoremap ,oA Å
inoremap ,o ö
inoremap ,o Ö

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
