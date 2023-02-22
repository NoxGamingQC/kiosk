# Setup instruction

Right now you should have a fresh installation. We will walk through all the configuration of the system.

## Wifi

First of all you will need to have wifi setup if you don't have an ethernet cable, here's how to set it up:

The easiest way is through the cmd `raspi-config`.
Once you ran the command go in `Sytem Options` and then `Wireless LAN`.
Follow the instruction.
Reboot if necessary.

## Inverted screen?

I did got this issue. To resolve it run: `sudo nano /boot/config.txt` then add `lcd_rotate=2` in the file.
You may need to comment the `dtoverlay=vc4-fkms-v3d` in the file in order for it to work.

## Remote desktop

If you know the Pi's IP address you can access with your built in remote desktop app, but first you need to instal xrdp with the following command: 
`sudo apt-get install xrdp`

## Graphical environement

- Install prerequisites using:`sudo apt-get install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox`

## Install Chromium

- `sudo apt-get install --no-install-recommends chromium-browser`

## Clean boot
- Disable starting rainbow using `sudo nano /boot/config.txt`: add line `disable_splash=1`
- Disable booting information using `sudo nano /boot/cmdline.txt`: add at the end of first line `silent quiet splash loglevel=0 logo.nologo vt.global_cursor_default=0`, replace `console=tty1` with `console=tty3`

### The project

If you want to have everything to work well you will need this project ;)

- Copy the file called `autostart` in : `/etc/xdg/openbox/`
- To start on the GUI instead of the console add in /home/pi/.bash_profile `[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx -- -nocursor`
- Make sure you enable autologin in the console with `raspi-config`, it will not work until you log in

Now, you should be good to go
