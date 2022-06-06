#!/bin/bash

echo "[+] Creating directory $1"; mkdir $1; echo "[+] Creating sub-directory 'nmap'"; mkdir $1/nmap; echo "[+] Creating sub-directory 'enumeration'"; mkdir $1/enumeration; echo "[+] Creating sub-directory 'shell'"; mkdir $1/shell; echo "[+] Creating sub-directory 'priv-esc'"; mkdir $1/priv-esc

echo "[+] copying and executing inital-enum.sh"
cp initial-enum.sh $1/initial-enum.sh
echo "What is the target IP?: "
read target_ip
cd $1; chmod +x initial-enum.sh; ./initial-enum.sh $target_ip; echo; echo ;echo; echo "Done, cleaning up"; rm initial-enum.sh; rm open-ports.txt


