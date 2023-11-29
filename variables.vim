let g:lsc_auto_map = 1
let g:lsc_server_commands = {
            \   'vim': 'vim-language-server --stdio',
            \   'javascript': 'typescript-language-server --stdio',
            \   'typescript': 'typescript-language-server --stdio',
            \   'tex': 'texlab',
            \ }


let g:UltiSnipsExpandTrigger = '<tab>'
" let g:UltiSnipsListSnippets = '<C-tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-tab>'
