#!/bin/sh
# Free XRDP KaliLinux | https://aank.me/Youtube
rm -rf ngrok ngrok.zip ng.sh xrdp-kali.sh x.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/GCngr0k > /dev/null 2>&1
chmod +x ng.sh
./ng.sh authtoken 2KbuGYwdWjP7k5ToRoGWpqYZzHe_46powYYZXL35ugHKJtruJ
clear
echo "======================="
echo "Choose ngrok region"
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "Choose ngrok region: " CRP
./ngrok tcp --region $CRP 3388 &>/dev/null &
echo "===================================="
echo "Install XRDP Kali Linux"
echo "===================================="
docker pull kalilinux/kali-rolling
clear
echo "===================================="
echo "Start XRDP Kali Linux"
echo "===================================="
echo "===================================="
echo "Username : kali"
echo "Password : kali"
echo "XRDP Address:"
IP=$(./ngrok tcp --region $CRP 3388 | grep "Forwarding" | awk '{print $4}')
PORT=$(./ngrok tcp --region $CRP 3388 | grep "Forwarding" | awk -F ':' '{print $2}')
echo "$IP:$PORT"
echo "IP:" && curl --silent --show-error ipconfig.io
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "Wait to finish bot and next open RDC to connect"
echo "===================================="
echo "===================================="
docker run --rm -it --hostname aank -p $PORT:3389 kalilinux/kali-rolling > /dev/null 2>&1
b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'
# Branding

printf """$c$b
 
██╗     ██╗███╗   ██╗ ██████╗  ██████╗  █████╗ ██╗  ██╗ ██████╗ ███████╗████████╗██╗███╗   ██╗ ██████╗ 
██║     ██║████╗  ██║██╔════╝ ██╔════╝ ██╔══██╗██║  ██║██╔═══██╗██╔════╝╚══██╔══╝██║████╗  ██║██╔════╝ 
██║     ██║██╔██╗ ██║██║  ███╗██║  ███╗███████║███████║██║   ██║███████╗   ██║   ██║██╔██╗ ██║██║  ███╗
██║     ██║██║╚██╗██║██║   ██║██║   ██║██╔══██║██╔══██║██║   ██║╚════██║   ██║   ██║██║╚██╗██║██║   ██║
███████╗██║██║ ╚████║╚██████╔╝╚██████╔╝██║  ██║██║  ██║╚██████╔╝███████║   ██║   ██║██║ ╚████║╚██████╔╝
╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝
    $r  Support YT Channel-> Aank is ME © 2022 $c https://aank.me/Youtube 
          
$endc$enda""";
