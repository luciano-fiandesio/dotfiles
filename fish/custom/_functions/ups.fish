# Go up N directories

function ups

  set str ""
  set count 0

  while test $count -lt $argv 
    cd ..
    set count (math $count + 1)
  end 
end
