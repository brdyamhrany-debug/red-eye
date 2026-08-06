#!/data/data/com.termux/files/usr/bin/bash

# Color definitions
red='\033[1;31m'
green='\033[1;32m'
yellow='\033[1;33m'
reset='\033[0m'

clear
echo -e "${red}"
echo " "
echo ". ( -_•)ᡕᠵᡁ᠊╾━💥
 "
echo " (Red Eye/black hat)"
echo " "
echo -e "${reset}"
echo " 1) Nmap Network scanner / port scan"
echo " 2) Hydra Brute-force login (test your own)"
echo " 3) SQLMap SQL injection testing"
echo " 4) Nipe Make Tor your default gateway"
echo " 5) Metasploit Exploitation framework (official pkg)"
echo " 6) Wireshark Packet capture"
echo " 7) Aircrack-ng WiFi security auditing"
echo " 8) John the Ripper Password cracker (offline files)"
echo " 9) cupp Generate wordlists (for education)"
echo "10) Red Hawk Web vulnerability scanner"
echo "11) Install All Tools"
echo " 0) Exit"
echo ""
echo -e "${yellow}Only use these on systems you own or have permission to test.${reset}"
echo "-------------------------------------------"
read -p "Choose one: " choice

case $choice in
 1)
 pkg install nmap -y
 echo -e "${green}Nmap installed. Example: nmap -sV 192.168.1.1${reset}"
 ;;
 2)
 pkg install hydra -y
 echo -e "${green}Hydra installed.${reset}"
 ;;
 3)
 pkg install python -y
 pip install sqlmap
 echo -e "${green}SQLMap installed.${reset}"
 ;;
 4)
 pkg install git tor -y
 git clone https://github.com/htrgouvea/nipe
 cd nipe && cpanm --installdeps.
 echo -e "${green}Nipe installed.${reset}"
 ;;
 5)
 pkg install metasploit -y
 echo -e "${green}Metasploit installed. Learn responsibly.${reset}"
 ;;
 6)
 pkg install wireshark -y
 echo -e "${green}Wireshark installed (may need root).${reset}"
 ;;
 7)
 pkg install aircrack-ng -y
 echo -e "${green}Aircrack-ng installed.${reset}"
 ;;
 8)
 pkg install john -y
 echo -e "${green}John the Ripper installed.${reset}"
 ;;
 9)
 pkg install git python -y
 git clone https://github.com/Mebus/cupp
 echo -e "${green}cupp installed. Wordlists are for education only.${reset}"
 ;;
 10)
 pkg install git php -y
 git clone https://github.com/Tuhinshubhra/RED_HAWK
 echo -e "${green}Red Hawk installed.${reset}"
 ;;
 11)
 pkg install nmap hydra python tor wireshark aircrack-ng john metasploit php git -y
 pip install sqlmap
 git clone https://github.com/htrgouvea/nipe
 git clone https://github.com/Mebus/cupp
 git clone https://github.com/Tuhinshubhra/RED_HAWK
 echo -e "${green}All tools installed.${reset}"
 ;;
 0)
 exit
 ;;
 *)
 echo -e "${red}Error: Invalid selection.${reset}"
 ;;
esac
