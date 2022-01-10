# PGP
set -x GPG_TTY (tty)

# EDITOR
set -Ux EDITOR nvim

# local bin - small scripts
fish_add_path ~/bin

# GOLANG
set -x GOPATH ~/go-workspace
[ (uname) = 'Darwin' ] && set -x GOROOT /usr/local/opt/go/libexec
[ (uname) = 'Linux' ] && set -x GOROOT /usr/lib/go

fish_add_path $GOROOT/bin
fish_add_path $GOPATH/bin
