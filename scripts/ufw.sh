#!/bin/bash

# while and if statements are used just for the sake of it as I was learning bash scripting
flag=true
echo ""; echo "It's good to have a firewall installed."
while [ $flag == true ]; do
	echo "Do you want to install the Uncomplicated Firewal (UFW)?" && echo -n "[y]yes [n]no [default]yes : " && read -r fw
	if [ "$fw" = "" ] || [ "$fw" == 'y' ]; then apt install ufw -y && ufw enable && flag=false
	elif [ "$fw" == 'n' ]; then flag=false
	else echo "You have chosen invalid option. Choose either y or n." && echo ""
	fi
done
