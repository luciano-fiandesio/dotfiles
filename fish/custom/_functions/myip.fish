# show ip

function myip 
    echo '🌎  Public IP:' (dig +short myip.opendns.com @resolver1.opendns.com)
    echo '🏠  Local IP:' (ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p')
end