# Ubuntu 22.04

A simple kiosk, that allow you to open a browser page on boot. And block any other manipulation on the system. (Well if you don't know how to get out of it)

## Requirements

- Ubuntu 22.04

## Todo

- Sticky keyboard
- Finish the script to allow edit on system that the kiosk is already installed

## Setting everything up

- First of all import the appropriate ubuntu folder matching your version.

- In the autostart file edit the link you want the browser to launch on startup

- To set everything up you just have to run **kiosk.sh**: `$ sudo bash kiosk.sh` (Make sure to run sudo or else the browser will not be booting on startup)

- In Ubuntu settings, under the user tab, make sure to check **Autologin** so the user will be connected automatically to the kiosk.

- After the setup is complete close your session down and when you click a user you should have a gear on the bottom right corner. Select **openbox** and open the session.

- If you need to do further modification, make sure you have a keyboard connected and press `CTRL + ALT + BACKSPACE`. Once the session is close press the gear on the bottom right corner, then select **Ubuntu**. You can then login.

_P.S. If you forgot to run sudo and you are stuck on a black screen in openbox. You can do a right click and go in terminal and find back this project. You will be able to rerun the script but this time do not forget sudo in front ;)_

### Install keyboard

I only have found one keyboard that kinda work for the kiosk. Only downside is it isn't sticky. I'm currently doing a custom one. In the meantime you can check this one if you need an immediate solution (Default keyboard doesn't seems to detect text input in browser. So we are using a browser extension) `https://chrome.google.com/webstore/detail/screen-virtual-keyboard-s/gkiknnlmdgcmhmncldcmmnhhdiakielc/related?hl=en-GB`

_P.S. Once it is install, don't forget to allow the plugin to be use in icognito mode. (The kiosk runs in icognito)_

### Edit the ubuntu logo at boot and on the lock screen

- For the ubuntu logo that is centered you need to edit `/usr/share/plymouth/themes/spinner/bgrt-fallback.png`. The default size of the picture is: 128x128px

- For ubuntu logo with the text, the one that is at the bottom, you need to edit `/usr/share/plymouth/themes/spinner/watermark.png`. The default size of the picture is: 248x87px.

- In the login screenm, if you want to change the ubuntu logo at the bottom, you need to edit `/usr/share/plymouth/ubuntu-logo.png`. The default size of the picture is: 248x87px.

_P.S. For all the entry above make sure to keep the same file name. The file extension must be **.png**_

## Authors & collaborators

- NoxGamingQC
