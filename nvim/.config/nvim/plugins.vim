if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'https://github.com/chriskempson/base16-vim.git', { 'dir': '~/.config/plugged/base16-vim.git' }
Plug 'jiangmiao/auto-pairs', { 'dir': '~/.config/plugged/auto-pairs' }
Plug 'vim-airline/vim-airline', { 'dir': '~/.config/plugged/vim-airline' }
Plug 'vim-airline/vim-airline-themes', { 'dir':'~/.config/plugged/vim-airline-themes' }
Plug 'scrooloose/nerdtree', { 'dir': '~/.config/plugged/nerdtree' }
Plug 'junegunn/fzf.vim', { 'dir': '~/.config/plugged/fzf' }
Plug 'plasticboy/vim-markdown', { 'dir': '~/.config/plugged/vim-markdown' }
Plug 'vim-jp/vim-java', { 'dir': '~/.config/plugged/vim-java' }
Plug 'majutsushi/tagbar', { 'dir': '~/.config/plugged/tagbar' }
Plug 'airblade/vim-gitgutter', { 'dir': '~/.config/plugged/vim-gitgutter' }
Plug 'tpope/vim-fugitive', { 'dir': '~/.config/plugged/vim-fugitive' }
Plug 'udalov/kotlin-vim', { 'dir': '~/.config/plugged/kotlin-vim' }
call plug#end()

