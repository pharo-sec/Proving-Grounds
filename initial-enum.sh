#!/bin/bash

nmap -p- -Pn -oA nmap/full-port --open $1

echo 'Storing the found open ports in open-ports.txt'

cat nmap/full-port.nmap | grep open | grep -v Nmap | cut -f 1 -d '/' > open-ports.txt

echo 'Generating list of ports for Nmap service scan'

ports=$(sed -z 's/\n/,/g' open-ports.txt | sed '$ s/.$//')

nmap -p $ports -Pn -sC -sV -oA nmap/service-scan $1

