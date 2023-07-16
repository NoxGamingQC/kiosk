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


## move autostart to /etc/xdg/openbox/

openbox --replace


### Change logo on boot

update-alternatives --list default.plymouth

## For just the logo in the splash screen (the one in the center) change /usr/share/plymouth/themes/spinner/bgrt-fallback.png (128x128px)

## For just the logo with the text (the one on the bottom of the screen) change /usr/share/plymouth/themes/spinner/watermark.png (248x87px)

## Might need also to change /usr/share/plymouth/ubuntu-logo.png (248x87px) (possiblement pour écran de connexion)

## For all those enty above make sure to keep the same file name.
