# fish config
set --global --export DOTFILES_REPO ~/.dotfiles

# no greeting
set fish_greeting

# homebrew
switch (uname)
    case Linux
       fish_add_path /home/linuxbrew/.linuxbrew/bin
    case Darwin
       fish_add_path /usr/local/sbin
    case '*'
       echo Hi, stranger!
end
source ~/.config/fish/custom/__imports.fish

# asdf
source ~/.asdf/asdf.fish

# load custom functions
#set -U fish_function_path ~/.config/fish/custom/_functions $fish_function_path
for f in ~/.config/fish/custom/_functions/*
  source $f
end

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

#status is-login; and pyenv init --path | source


# Enable starship prompt
# https://starship.rs/
starship init fish | source
