## UTILS

function g ; git $argv ; end
alias ll 'exa --long --header --git -a'
alias llt 'exa --long --header --git --sort=newest --reverse'
alias cat='bat'
alias ss='hub sync'
#alias vim='nvim'
alias vim='~/.local/bin/lvim'

## EDITOR
alias v="vim"

## JAVA

alias msk 'mvn clean install -Dmaven.test.skip=true'
alias j8 'sdk use java 1.8.0_251'
alias j12 'sdk use java 12.0.2.hs-adpt'
alias j14 'sdk use java 14.0.2.hs-adpt'

## MISC

alias nn="vim '+normal Go' ~/resiliosync/always-up/documents/notes.txt"
alias b="git branch | fzf | xargs git checkout"

## VM
alias win="VBoxSDL --startvm Windows10"

