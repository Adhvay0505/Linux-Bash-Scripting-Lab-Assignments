#!/bin/bash

declare -a lines

index=0

while read line
do
	lines[$index]="$line"
	index=$((index + 1))
done < <(tail -n 5 glossary.txt)

echo "Glossary entries in reverse order:"

for ((i=index-1; i>=0; i--))
do
	echo "${lines[$i]}"
done
