" setlocal makeprg=python3\ %\ src/toy.txt
" setlocal textwidth=0

if !exists("current_compiler")
  compiler python
endif
