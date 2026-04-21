#!/bin/bash

count=1
echo "S.No   File   Name   Date"

for file in *
do
	
	if [ -f "$file" ]; then
		mod_date=$(stat -c %y "$file" | cut -d'.' -f1)
		echo "$count $file $mod_date"
		count=$((count + 1))
	fi

done
