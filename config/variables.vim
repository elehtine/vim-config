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
            \   'cpp': {
            \       'command': 'clangd-12 --background-index',
            \       'suppress_stderr': v:true
            \    },
            \    'c': {
            \       'command': 'clangd-12 --background-index',
            \       'suppress_stderr': v:true
            \    },
            \    'python': 'pyls',
            \    'html': 'html-languageserver --stdio',
            \    'css': 'css-languageserver --stdio',
            \    'sh': 'bash-language-server start',
            \ }


let g:UltiSnipsExpandTrigger = '<tab>'
" let g:UltiSnipsListSnippets = '<C-tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-tab>'
