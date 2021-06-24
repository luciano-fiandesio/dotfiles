# fish config
set --global --export DOTFILES_REPO ~/.dotfiles

# no greeting
set fish_greeting

# Setting up the Path
set -e fish_user_paths

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

# load custom functions
set -Up fish_function_path ~/.config/fish/custom/_functions

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

status is-login; and pyenv init --path | source


# Enable starship prompt
# https://starship.rs/
starship init fish | source
