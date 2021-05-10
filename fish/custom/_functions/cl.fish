# cd to directory and list files with `exa` or `ls`
#     - Requirements: exa (optional)

function cl
   if type -q exa
      cd $argv && exa -lah --group-directories-first --git --icons
   else
      cd $argv && ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F
   end
end
