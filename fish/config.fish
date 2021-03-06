# fish config
set --global --export DOTFILES_REPO ~/.dotfiles

# no greeting
set fish_greeting

# Setting up the Path
set -e fish_user_paths

#homebrew
set -U fish_user_paths "/usr/local/sbin" $fish_user_paths

source ~/.config/fish/custom/__imports.fish

# load custom functions
for f in ~/.config/fish/custom/_functions/*.fish
    set -Up fish_function_path $f
end

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

# Enable starship prompt
# https://starship.rs/
starship init fish | source
