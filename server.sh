#!/usr/bin/bash

echo "Server launcher"
echo "what would you like to do"
echo "(1) start your server"
echo "(2) edit your server properties"
echo "(3) remove your world (beware you aren't getting it back)"
echo "(4) backup your server"
echo "(5) more settings"
echo "(6) advanced settings"
echo "ctrl C to exit"
read choice
if [ $choice -eq 1 ]
then
	bash ./run.sh 
elif [ $choice -eq 2 ]
then
	nano server.properties
elif [ $choice -eq 3 ]
then
	rm -rf world
elif [ $choice -eq 4 ]
then
	echo incomplete feature
	sleep 2s

elif [ $choice -eq 5 ] 
then
	clear
	echo "(1) edit ops.json"
	echo "(2) edit whitelist.json"
	echo "(3) edit banned-players.json"
	echo "(4) edit banned-ips.json"
	echo "(5) edit usercache.json"
	echo "(6) edit something else"
	echo "ctrl c to stop"
	read schoice
	if [ $schoice -eq 1 ]
	then
		nano ops.json
	elif [ $schoice -eq 2 ]
	then
		nano whitelist.json
	elif [ $schoice -eq 3 ]
	then 
		nano banned-players.json
	elif [ $schoice -eq 4 ]
	then
		nano banned-ips.json
	elif [ $schoice -eq 5 ]
	then
		nano usercache.json
	else
		echo "insert name here"
		read name
		nano "$name"
	fi
	clear
	bash server.sh
else
	clear 
	echo "welcome to advanced settings"
	echo "there is nothing here"
	echo "Returning"
	sleep 3s
	bash server.sh
fi
clear
bash server.sh
