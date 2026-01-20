let g:vimtex_quickfix_ignore_filters = [ 'Overfull' ]

let g:lsc_auto_map = 1
let g:lsc_server_commands = {
            \ 'vim' : {
            \   'name': 'vim-language-server',
            \   'command': 'vim-language-server --stdio',
            \      'message_hooks': {
            \          'initialize': {
            \              'initializationOptions': { 'vimruntime': $VIMRUNTIME, 'runtimepath': &rtp },
            \          },
            \      },
            \   },
            \   'javascript': 'typescript-language-server --stdio',
            \   'typescript': 'typescript-language-server --stdio',
            \   'tex': 'texlab',
            \    'html': 'html-languageserver --stdio',
            \    'css': 'css-languageserver --stdio',
            \ }

" \    'python': 'pyls',
" \    'sh': 'bash-language-server start',
" \   'cpp': {
" \       'command': 'clangd-12 --background-index',
" \       'suppress_stderr': v:true
" \    },
" \    'c': {
" \       'command': 'clangd-12 --background-index',
" \       'suppress_stderr': v:true
" \    },

let g:UltiSnipsExpandTrigger = '<tab>'
" let g:UltiSnipsListSnippets = '<C-tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-tab>'
