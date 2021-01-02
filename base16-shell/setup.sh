#!/usr/bin/env bash

if ! [ -x "$(command -v stow)" ]; then
  echo 'Error: stow is not installed. Please install Apache Stow' >&2
  exit 1
fi

stow -v -d ~/.dotfiles/ -S base16-shell -t ~/ --ignore setup.sh