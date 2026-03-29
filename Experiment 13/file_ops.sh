#!/bin/bash
mkdir -p $HOME/class/batch
cd $HOME/class/batch
echo "This is the original file." > profile.txt
echo "Welcome to Linux Bash Scripting Lab." >> profile.txt
cp profile.txt copy_profile.txt
echo "Printing file content from line 2:"
tail -n +2 profile.txt
echo "Differences between files:"
diff profile.txt copy_profile.txt
