source ~/.config/nvim/plugins.vim

" Basics Settings {{{
scriptencoding utf-8
set encoding=utf-8
set fileencodings=utf-8
set nocompatible

set nostartofline          " Prevent the cursor from changing the current column

filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.

set autoindent             " Indent according to previous line.
set number                 " show line numbers
set relativenumber         " show relative numbers too
set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.
set cmdheight   =2         " Give more space for displaying messages.   

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.
set ignorecase             " ignore case when searching

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.
set updatetime  =300       " lower updatetime for better UI experience
set shortmess+=c           " Don't pass messages to |ins-completion-menu|.
set signcolumn  =yes       " Always show the signcolumn
set lazyredraw
set shortmess+=wI
" }}}

" Look and Feel {{{

" Force to use underline for spell check results
augroup SpellUnderline
  autocmd!
  autocmd ColorScheme *
    \ highlight SpellBad
    \   cterm=Underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=Reverse
    \   gui=Undercurl
    \   guisp=Red
  autocmd ColorScheme *
    \ highlight SpellCap
    \   cterm=Underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=Reverse
    \   gui=Undercurl
    \   guisp=Red
  autocmd ColorScheme *
    \ highlight SpellLocal
    \   cterm=Underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=Reverse
    \   gui=Undercurl
    \   guisp=Red
  autocmd ColorScheme *
    \ highlight SpellRare
    \   cterm=Underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=Reverse
    \   gui=Undercurl
    \   guisp=Red
augroup END

set background=dark
" Make sure to set iTerm to xterm-256color
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

set tabstop=4           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces
set shiftround          " >> indents to next multiple of 'shiftwidth'.
set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')
set showbreak=↪>\       " ↪ space
" }}}
" Key Mappings {{{
" Reset Leader
nnoremap <Space> <Nop>
let mapleader = ","

" }}}

" The fish shell is not very compatible to other shells and unexpectedly
" breaks things that use 'shell'.
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

" No tmp or swp files
set nobackup
set nowritebackup
set noswapfile

" markdown (https://blog.lourenci.com/how-to-wrap-long-lines-when-writing-markdown-on-vim/)
augroup Markdown
  autocmd!
  autocmd FileType markdown 
                    \ set wrap |
                    \ set linebreak |
                    \ set spell
augroup END

" Nerd Tree / Netrw {{{
let g:netrw_liststyle=3
let g:netrw_altfile=1
let g:netrw_winsize=25
let NERDTreeShowHidden=1    " show hidden files
let NERDTreeQuitOnOpen=1    " close nerdtree when opening a file
nmap <F3> :NERDTreeToggle<CR>
nnoremap - :NERDTreeFind<CR>
" }}}

" Plugins
source ~/.config/nvim/coc.vim
"source ~/.config/nvim/language-client.vim

" fzf {{{
set rtp+=/usr/local/opt/fzf     " set path to fzf for osx (see https://github.com/junegunn/fzf/blob/master/README-VIM.md)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }    " open fzf in a popup
" search for files
nnoremap <silent> <Leader><Space> :FZF<CR>    
" search for buffers
nnoremap <silent> <Leader>b :Buffers<CR>    
" }}}

" tagbar {{{
nmap <F2> :TagbarToggle<CR>
let g:tagbar_sort = 1
let g:tagbar_compact = 1
let g:tagbar_iconchars = ['▶', '▼']
" }}}

" markdown {{{
let g:vim_markdown_folding_disabled = 1
" }}}
" open files
map <silent> <leader>nn :e $HOME/resiliosync/always-up/documents/notes.txt<CR>
map <silent> <leader>jj :e $HOME/resiliosync/always-up/documents/journal<CR>

