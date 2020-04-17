bass source ~/.bash_profile
source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish

# no greeting
set fish_greeting

# FDF
set -gx FZF_DEFAULT_OPTS           '--height=50% --min-height=15 --reverse'
set -gx FZF_DEFAULT_COMMAND        'rg --files --ignore-vcs --hidden'
set -gx FZF_FIND_FILE_COMMAND $FZF_DEFAULT_COMMAND
set -gx FZF_CD_COMMAND $FZF_DEFAULT_COMMAND
set -gx FZF_OPEN_COMMAND $FZF_DEFAULT_COMMAND

# DHIS2
set -x DHIS2_HOME ~/.dhis

# PGP
set -x GPG_TTY (tty)

# Auto-install fisher and install plugins
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

# https://starship.rs/
starship init fish | source
