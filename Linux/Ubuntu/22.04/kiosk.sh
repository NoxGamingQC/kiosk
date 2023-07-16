#!bin/bash

############################################
# FILE: KIOSK.SH
# PROJECT: KIOSK
# SYSTEM: UBUNTU 22.04
############################################
# AUTHOR: NOXGAMINGQC
# LAST UPDATE: 2023-07-15
############################################

sudo apt-get install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox obconf

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb


cd autostart /etc/xdg/openbox/autostart

openbox --replace
