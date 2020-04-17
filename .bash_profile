export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export LC_ALL=en_US.UTF-8
export EDITOR=vim
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/luciano/.sdkman"
[[ -s "/Users/luciano/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/luciano/.sdkman/bin/sdkman-init.sh"
