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
echo -e "${red}"
cat << "EOF"
              _____
           .-'     '-.
          /           \
          |  .--. .--. |
          | : () : () :|
          | '.  Y  .'  |
           \  '--'  _.-'
         .-'`-----'`
       /`-._____   ____
      /     ||||`-' |||\
     /      ||||    ||||
     |     _||||____||||_
     \    `----.___----'
      \________||________/
         |    ||||    |
         |____||||____|
        /     ||||     \
       /      ||||      \
      /       ||||       \
     /        ||||        \
    /_________||||_________\
EOF
echo -e "${reset}"

# Header
echo -e "${green}=============================="
echo -e "     Welcome to Skull Installer"
echo -e "==============================${reset}"
sleep 1
echo -e "${yellow}>>> Select the script you want to install <<<${reset}"
sleep 1

# Menu
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
    git clone https://github.com/example/hack-fb
    cd hack-fb
    bash install.sh
    ;;
  2)
    echo -e "${green}Installing Spam SMS Script...${reset}"
    git clone https://github.com/example/spam-sms
    cd spam-sms
    python spam.py
    ;;
  3)
    echo -e "${green}Installing Cloning Script...${reset}"
    git clone https://github.com/example/cloning-akun
    cd cloning-akun
    bash run.sh
    ;;
  4)
    echo -e "${red}Exiting...${reset}"
    exit
    ;;
  *)
    echo -e "${red}Invalid option! Please choose 1-4.${reset}"
    ;;
esac
