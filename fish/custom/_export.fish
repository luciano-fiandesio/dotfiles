# PGP
set -x GPG_TTY (tty)

# EDITOR
set -Ux EDITOR nvim

# Java
[ (uname) = 'Linux' ] && set -g -x JAVA_HOME '$SDKMAN_DIR/candidates/java/current'

# GOLANG
set -x GOPATH ~/go-workspace
[ (uname) = 'Darwin' ] && set -x GOROOT /usr/local/opt/go/libexec
fish_add_path $GOROOT/bin
fish_add_path $GOPATH/bin
