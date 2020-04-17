#!/bin/bash

# install brew
if test ! $(which brew); then
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi
# install via brew
brew bundle --file=./Brewfile
