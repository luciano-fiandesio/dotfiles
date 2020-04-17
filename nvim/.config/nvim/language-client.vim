let g:LanguageClient_serverCommands = {'java' : ['~/.config/nvim/java.sh'],}


nnoremap <F5> :call LanguageClient_contextMenu()<CR>

" 'Lazy' load deoplete so startup time is :ok_hand:
let g:deoplete#enable_at_startup = 0
autocmd InsertEnter * call deoplete#enable()

let g:deoplete#enable_smart_case = 1

" Turn off the annoying giant block at the top when a suggestion is matched
set completeopt-=preview

if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif

" Disable the candidates in Comment/String syntaxes.
call deoplete#custom#source('_',
            \ 'disabled_syntaxes', ['Comment', 'String'])

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

let g:deoplete#sources = {}
let g:deoplete#sources.java = ['tag', 'LanguageClient', 'buffer', 'file' ]
