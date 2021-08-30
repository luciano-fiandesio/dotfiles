# Source Exports
source ~/.config/fish/custom/_export.fish

if test -e ~/.config/fish/custom/_export.local.fish
  source ~/.config/fish/custom/_export.local.fish
end 
# Source Aliases
source ~/.config/fish/custom/_alias.fish

# Google cloud
[ (uname) = 'Darwin' ] && source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
