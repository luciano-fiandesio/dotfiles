call plug#begin()
Plug 'https://github.com/chriskempson/base16-vim.git'
"Plug 'SirVer/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'plasticboy/vim-markdown'
Plug 'vim-jp/vim-java'
" Language server {{{
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
Plug 'majutsushi/tagbar'
" }}}
Plug 'airblade/vim-gitgutter'
call plug#end()

