#!/bin/bash
echo "Enter the username to check:"
read username
while true
do
	if who | grep -w "$username" > /dev/null
	then
		echo "User $username is now logged in."
		break
	else
		echo "User $username is not logged in. Checking again in 30 seconds..."
		sleep 30
	fi
done
