#!/usr/bin/env bash

DOTFILES_DIR=$HOME/.dotfiles
DOTFILES_REPO=https://github.com/luciano-fiandesio/dotfiles.git

# create fish config folder, if does not exist
mkdir -p ~/.config/fish

ln -sv $DOTFILES_DIR/fish/config.fish ~/.config/fish
ln -sv $DOTFILES_DIR/fish/fish_plugins ~/.config/fish
ln -sv $DOTFILES_DIR/fish/custom ~/.config/fish

