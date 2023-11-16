#!/bin/bash



filename=$1

if [ -z "$filename" ]; then
    read -p "Enter a filename: " filename
fi


#!/bin/bash
echo $USER
echo "Creating a new file with System Info and its backup..."
touch $filename.txt
cp $filename.txt _backup.txt
echo "Done. check new file for System Information"
printf  "Operating System: $(uname -a)\n">$filename.txt
printf "CPU Information: $(lscpu)\n">>$filename.txt
printf "Memory Information: $(free -h)">>$filename.txt

line_count=$(wc -l < "$filename")

echo "The file $filename has $line_count lines."
