# Update brew, neovim, pip

function update
  echo 'Updating homebrew stuff...' | cowsay | lolcat -t
  brew update
  brew upgrade
  brew cleanup
  echo 'Updating casks' | cowsay | lolcat -t
  brew cask upgrade
  echo 'Updating Neovim...' | cowsay | lolcat -t
  nvim -c 'PlugUpdate' -c 'qa'
  set currentPath (pwd)
  echo 'Updating pips' | cowsay | lolcat -t
  pip list -o | cut -d " " -f 1 | tail -n +3 | xargs pip install -U
  pip3 list -o | cut -d " " -f 1 | tail -n +3 | xargs pip3 install -U
  echo 'Back to business lets get it! #HUSTLE' | cowsay | lolcat -t
  cd $currentPath
end
