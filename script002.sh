#!/bin/bash
echo $USER
echo "Creating a new file with System Info and its backup..."
touch newfile.txt
cp newfile.txt newfile_backup.txt
echo "Done. check new file for System Information"
printf  "Operating System: $(uname -a)\n">newfile.txt
printf "CPU Information: $(lscpu)\n">>newfile.txt
printf "Memory Information: $(free -h)">>newfile.txt