#!/usr/bin/env bash

if ! [ -x "$(command -v stow)" ]; then
  echo 'Error: stow is not installed. Please install Apache Stow' >&2
  exit 1
fi


# generate msmtp config file and mailcap

TEMPLATE="msmtprc.template"
case $(uname | tr '[:upper:]' '[:lower:]') in
      linux*)
        sed  "/ca-certificates/s/^#//g" $TEMPLATE > $HOME/.msmtprc
        cp mailcap/mailcap.linux .config/neomutt/mailcap 
        ;;
      darwin*)
        sed  "/cert.pem/s/^#//g" $TEMPLATE > $HOME/.msmtprc
        cp mailcap/mailcap.osx .config/neomutt/mailcap 
        ;;
      *)
        echo "Hi, stranger!"
        ;;
esac

stow -v -d ~/.dotfiles/ -S neomutt -t ~/ 
