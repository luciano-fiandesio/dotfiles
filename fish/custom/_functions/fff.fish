# show custom fish custom functions

function fff

   set dir (dirname (status --current-filename))
   for f in (find $dir -type f -maxdepth 1)
      set bold (tput bold)
      set normal (tput sgr0)
      set name (basename $f)
      set fun (string split -r -m1 . $name)
      set man (head -n1 $f) 
      set manx (string sub -s 3 $man)
      echo $bold$fun[1]$normal - $manx
   end
end
