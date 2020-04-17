#                _   _____ _    __
#  __/|___/|_   / | / /   | |  / /
# |    /    /  /  |/ / /| | | / / 
#/_ __/_ __|  / /|  / ___ | |/ /  
# |/   |/    /_/ |_/_/  |_|___/   
                                 
function ..       ; cd .. ; end
function ...      ; cd ../.. ; end
function ....     ; cd ../../.. ; end
function .....    ; cd ../../../.. ; end
function ......   ; cd ../../../../.. ; end
function c        ; clear ; end


#                 ____  _______    __
#   __/|___/|_   / __ \/ ____/ |  / /
#  |    /    /  / / / / __/  | | / / 
# /_ __/_ __|  / /_/ / /___  | |/ /  
#  |/   |/    /_____/_____/  |___/   
                                   
# postgresql

function postgres_ctl
  switch (uname)
    case Darwin
        pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log $argv
    case Linux
        echo 'TODO'
  end
end

function postgres.start
  postgres_ctl start
end

function postgres.stop
  postgres_ctl stop
end

function postgres.status
  postgres_ctl status
end

function postgres.with-logging
    postgres_ctl stop
    cp /usr/local/var/postgres/postgresql.log.conf /usr/local/var/postgres/postgresql.conf
    postgres_ctl start
    echo "tail -f /usr/local/var/postgres/log/postgres-"
end

function postgres.without-logging
    postgres_ctl stop
    cp /usr/local/var/postgres/postgresql.no-log.conf /usr/local/var/postgres/postgresql.conf
    postgres_ctl start
end

# tomcat

function tomcat.start
  /Library/Tomcat/bin/startup.sh
end

function tomcat.stop
  /Library/Tomcat/bin/shutdown.sh
end


# upload file to cockfile - 5gb max, stores for 24 hours
function cockfile
  curl --progress-bar -F file=@$argv "https://cockfile.com/api.php?d=upload-tool"
end

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


function myip 
    echo '🌎  Public IP:' (dig +short myip.opendns.com @resolver1.opendns.com)
    echo '🏠  Local IP:' (ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p')
end

switch (uname)
case Darwin
    source $path/os/osx/functions.fish
case '*'
    source $path/os/linux/functions.fish
end
