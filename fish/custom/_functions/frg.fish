# Fuzzy grep via rg and open in vim with line number
#     - Requirements: fzf, rg, neovim

function frg
   set selected (rg --no-heading --line-number $argv | fzf -0 -1 | awk -F: '{print $1, $2}')
   echo $selected | read -t file line
   nvim $file +$line
end

