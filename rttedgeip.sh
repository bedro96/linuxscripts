#!/bin/bash
systemctl stop firewalld
rm edgeiplist
wget https://raw.githubusercontent.com/bedro96/linuxscripts/master/edgeiplist
input="./edgeiplist"
while IFS= read -r var
do
        #echo "$var"
        rtt=$(ping $var -i 1 -c 3 | tail -1 | awk -F / '{print $5}' | sed 's/....$//')
        #echo "$rtt"
        echo "$var,$rtt"
        echo "$var,$rtt" >> output.txt
done < "$input"
