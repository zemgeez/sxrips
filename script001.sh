
#!/bin/bash
echo "Hello" $USER

echo "Today is `date ` and the week `date+%V`."
echo "This here is a Script"
printf "these users are Currently using system \n"
w | cut -d " " -f1- |grep -v USER| sort -u

