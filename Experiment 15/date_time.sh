#!/bin/bash

echo "Current Date (DD-MM-YYYY):"
date +"%d-%m-%Y"

echo "Current Time (HH:MM:SS):"
date +"%H:%M:%S"

start_time=$(date +%s)
sleep 2

end_time=$(date +%s)
execution_time=$((end_time - start_time))
echo "Execution Time: $execution_time seconds"
