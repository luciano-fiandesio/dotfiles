#!/bin/bash
MYSHELL=`echo $SHELL | sed -e 's/\/.*\///g'`
# set fish as shell as default 
if [ "$MYSHELL" == "fish" ]; then
    echo “/usr/local/bin/fish” | sudo tee -a /etc/shells
    chsh -s /usr/local/bin/fish
fi
