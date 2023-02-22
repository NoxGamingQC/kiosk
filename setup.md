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


I highly recommend you to remove the screensaver here is how: `sudo apt-get purge xscreensaver`

## Install Chromium

- `sudo apt-get install chromium-browser`

### The project

If you want to have everything to work well you will need this project ;)

- Copy the file called `autostart` in : `/home/pi/.config/lxsession/LXDE/autostart`
- Copy and paste the ngst folder in `/home/pi`

Now, you should be good to go
