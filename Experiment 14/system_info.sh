#!/bin/bash
echo "Number of users currently logged in:"
who | wc -l
echo "Files in home directory (column format):"
ls -C $HOME
echo "Running a job with lower priority:"
nice -n 10 sleep 60 &
echo "Running a background job that survives logout:"
nohup sleep 120 &
