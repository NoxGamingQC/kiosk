# Setup instruction

<img alt="OS" src="https://img.shields.io/badge/OS-RaspberryPi%203-magenta?style=for-the-badge" />

### WARNING - SCRIPT NOT YET AVAILABLE PLEASE FOLLOW INSTRUCTIONS BELOW.
Right now you should have a fresh installation. We will walk through all the configuration of the system.

## Tested OS

- OS Lite 32 bit Bullseye

## Wifi

First of all you will need to have wifi setup if you don't have an ethernet cable, here's how to set it up:

The easiest way is through the cmd `raspi-config`.
Once you ran the command go in `Sytem Options` and then `Wireless LAN`.
Follow the instruction.
Reboot if necessary.

## Inverted screen?

I did got this issue. To resolve it run: `sudo nano /boot/config.txt` then add `lcd_rotate=2` in the file.
You may need to comment the `dtoverlay=vc4-fkms-v3d` in the file in order for it to work.

## Graphical environement

- Install prerequisites using:`sudo apt-get install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox`

## Install Chromium

- `sudo apt-get install --no-install-recommends chromium-browser`

## Clean boot
- Disable starting rainbow using `sudo nano /boot/config.txt`: add line `disable_splash=1`
- Disable booting information using at the end of first line (It's a one liner if it splits into 2 line the pi will break) `consoleblank=1 logo.nologo quiet loglevel=0 plymouth.enable=0 vt.global_cursor_default=0 plymouth.ignore-serial-consoles splash fastboot noatime nodiratime noram`
- To remove the lightning bolt for insuficiant power add `avoid_warnings=1` to `/boot/config.txt`

## Adding splash screen

- First of all you need to have the splash screen app: `sudo apt -y install rpd-plym-splash` (Useless? (NEED TO BE TESTED))
- `git clone --depth=1 https://gitlab.com/DarkElvenAngel/initramfs-splash.git`
- Add this line to the `/boot/config.txt`: `initramfs initramfs.img`
- Next you need the image you want to display this can be a PNG, JPEG, or BMP copy it to the `/boot` 
- Edit `/boot/splash.txt`
```
## Initramfs-Splash
image=splash.png

## If it is not fullscreen uncomment below (Can be remove if strech=1)
## fullscreen=1

## If it doesnt fit the screen properly uncomment below (Has priority over fullscreen)
## stretch=1
```
- Run `sudo cp  boot/initramfs.img /boot`
- Reboot

### The project

If you want to have everything to work well you will need this project ;)

- Copy the file called `autostart` in : `/etc/xdg/openbox/`
- To start on the GUI instead of the console add in /home/pi/.bash_profile `[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx -- -nocursor`
- Make sure you enable autologin in the console with `raspi-config`, it will not work until you log in

Now, you should be good to go
