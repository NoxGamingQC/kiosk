#!bin/bash

############################################
# FILE: KIOSK.SH
# PROJECT: KIOSK
# SYSTEM: UBUNTU 22.04
############################################
# UPDATED LAST BY: NOXGAMINGQC
# LAST UPDATE: 2023-07-17
############################################

# Variables
INFO='\033[1;36m'
SUCCESS='\033[1;32m'
WARNING='\033[1;33m'
ERROR='\033[1;31m'
COLOR_RESET='\033[0m'

# The script itself

echo -e "${INFO}Installing openbox${COLOR_RESET}"

sudo apt-get install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox obconf

echo -e "${INFO}Downloading Google Chrome${COLOR_RESET}"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

echo -e "${INFO}Installing Google Chrome${COLOR_RESET}"
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo -e "${INFO}Moving autostart${COLOR_RESET}"
mv autostart /etc/xdg/openbox/autostart

echo -e "${SUCCESS}Setup completed${COLOR_RESET}"

