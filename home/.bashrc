export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/snap/bin:$HOME/.local/bin"


if [[ "$OSTYPE" == "darwin"* ]]; then
    export PATH=$PATH:/usr/local/Cellar/libpq/13.0_1/bin
fi

export LC_ALL=en_US.UTF-8
export EDITOR=vim

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# allow local customization
if [ -f ~/.local_bashrc ]; then
    . ~/.local_bashrc
fi
source "$HOME/.cargo/env"
