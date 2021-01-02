# FDF
set -gx FZF_DEFAULT_OPTS           '--height=50% --min-height=15 --reverse'
set -gx FZF_DEFAULT_COMMAND        'rg --files --ignore-vcs --hidden'
set -gx FZF_FIND_FILE_COMMAND $FZF_DEFAULT_COMMAND
set -gx FZF_CD_COMMAND $FZF_DEFAULT_COMMAND
set -gx FZF_OPEN_COMMAND $FZF_DEFAULT_COMMAND

# PGP
set -x GPG_TTY (tty)
