#!/bin/bash

# Warna
red='\033[1;31m'
green='\033[1;32m'
blue='\033[1;34m'
yellow='\033[1;33m'
cyan='\033[1;36m'
reset='\033[0m'

# Clear layar
clear

# Password
echo -e "${yellow}Login terlebih dahulu untuk mengakses script...${reset}"
read -p "Masukkan password: " pw

if [[ $pw != "Rizky123" ]]; then
    echo -e "${red}Password salah! Akses ditolak.${reset}"
    exit
fi

# Gambar tengkorak seram
clear
echo -e "${green}"
cat << "EOF"
⠄⠄⠄⢰⣧⣼⣯⠄⣸⣠⣶⣶⣦⣾⠄⠄⠄⠄⡀⠄⢀⣿⣿⠄⠄⠄⢸⡇⠄⠄
⠄⠄⠄⣾⣿⠿⠿⠶⠿⢿⣿⣿⣿⣿⣦⣤⣄⢀⡅⢠⣾⣛⡉⠄⠄⠄⠸⢀⣿⠄
⠄⠄⢀⡋⣡⣴⣶⣶⡀⠄⠄⠙⢿⣿⣿⣿⣿⣿⣴⣿⣿⣿⢃⣤⣄⣀⣥⣿⣿⠄
⠄⠄⢸⣇⠻⣿⣿⣿⣧⣀⢀⣠⡌⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⣿⣿⣿⠄
⠄⢀⢸⣿⣷⣤⣤⣤⣬⣙⣛⢿⣿⣿⣿⣿⣿⣿⡿⣿⣿⡍⠄⠄⢀⣤⣄⠉⠋⣰
⠄⣼⣖⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⢇⣿⣿⡷⠶⠶⢿⣿⣿⠇⢀⣤
⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣷⣶⣥⣴⣿⡗
⢀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠄
⢸⣿⣦⣌⣛⣻⣿⣿⣧⠙⠛⠛⡭⠅⠒⠦⠭⣭⡻⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠄
⠘⣿⣿⣿⣿⣿⣿⣿⣿⡆⠄⠄⠄⠄⠄⠄⠄⠄⠹⠈⢋⣽⣿⣿⣿⣿⣵⣾⠃⠄
⠄⠘⣿⣿⣿⣿⣿⣿⣿⣿⠄⣴⣿⣶⣄⠄⣴⣶⠄⢀⣾⣿⣿⣿⣿⣿⣿⠃⠄⠄
⠄⠄⠈⠻⣿⣿⣿⣿⣿⣿⡄⢻⣿⣿⣿⠄⣿⣿⡀⣾⣿⣿⣿⣿⣛⠛⠁⠄⠄⠄
⠄⠄⠄⠄⠈⠛⢿⣿⣿⣿⠁⠞⢿⣿⣿⡄⢿⣿⡇⣸⣿⣿⠿⠛⠁⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠄⠄⠉⠻⣿⣿⣾⣦⡙⠻⣷⣾⣿⠃⠿⠋⠁⠄⠄⠄⠄⠄⢀⣠⣴
⣿⣿⣿⣶⣶⣮⣥⣒⠲⢮⣝⡿⣿⣿⡆⣿⡿⠃⠄⠄⠄⠄⠄⠄⠄⣠⣴⣿⣿⣿
EOF
echo -e "${reset}"

echo -e "${cyan}"
echo "╔═══════════════════════════════╗"
echo "║        SCRIPT MENU            ║"
echo "╠═══════════════════════════════╣"
echo "║ [1] ☠ spam WhatsApp.v2        ║"
echo "║ [2] ☠ Spam WhatsApp.v1        ║"
echo "║ [3] ☠ informasi website       ║"
echo "║ [4] ☠ Exit                    ║"
echo "╚═══════════════════════════════╝"
echo -e "${reset}"

# Input pilihan
read -p "Enter your choice [1-4]: " pilihan

case $pilihan in
  1)
    echo -e "${green}Installing FB Hack Script...${reset}"
   pkg update && pkg upgrade
pkg install git
pkg install nodejs-lts
pkg install npm
git clone https://github.com/Rizky598/Bom-WhatsApp
cd Bom-WhatsApp
npm install
npm start
    ;;
  2)
    echo -e "${green}Installing Spam SMS Script...${reset}"
   pkg update && pkg upgrade -y
pkg install git -y
pkg instal php -y
git clone https://github.com/Rizky598/Spam-WhatsApp
cd Spam-WhatsApp
php pam.php
    ;;
  3)
    echo -e "${green}Installing Cloning Script...${reset}"
    pkg update && pkg upgrade
pkg install git
git clone https://github.com/Rizky598/Pindai-website.v2
cd Pindai-website.v2
php owscan.php
    ;;
  4)
    echo -e "${red}Exiting...${reset}"
    exit
    ;;
  *)
    echo -e "${red}Invalid option! Please choose 1-4.${reset}"
    ;;
esac
