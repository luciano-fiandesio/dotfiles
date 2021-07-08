#!/usr/bin/env bash

if ! [ -x "$(command -v stow)" ]; then
  echo 'Error: stow is not installed. Please install Apache Stow' >&2
  exit 1
fi

stow -v -d ~/.dotfiles/ -S neomutt -t ~/ 

# generate msmtp config file
TEMPLATE="msmtprc.template"
case $(uname | tr '[:upper:]' '[:lower:]') in
      linux*)
        sed  "/ca-certificates/s/^#//g" $TEMPLATE > $HOME/.msmtprc
        ln -s .config/neomutt/mailcap.linux $HOME/.config/neomutt/mailcap 
        ;;
      darwin*)
        sed  "/cert.pem/s/^#//g" $TEMPLATE > $HOME/.msmtprc
        ln -s .config/neomutt/mailcap.osx $HOME/.config/neomutt/mailcap 
        ;;
      *)
        echo "Hi, stranger!"
        ;;
esac
