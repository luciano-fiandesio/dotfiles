# PGP
set -x GPG_TTY (tty)

# EDITOR
set -Ux EDITOR nvim

# Java
#set -g -x JAVA_HOME '/home/luciano/.sdkman/candidates/java/jdk-11.0.8'
set -g -x JAVA_HOME '$SDKMAN_DIR/candidates/java/current'
