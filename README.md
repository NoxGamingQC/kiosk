# Kiosk

This is for use the RaspberryPi as a kiosk.

For more information please visit: https://www.noxgamingqc/ngst/kiosk

## Requirements

- RaspberryPi 3
- RaspberryPi OS Lite (32 bit) (Bullseye)

_P.S. RaspberryPi 4 is not yet supported_

## Graphical environement

`sudo apt-get install xserver-xorg`
`sudo apt-get install xinit`
`sudo apt-get install lxde-core lxterminal lxappearance`
`sudo apt-get install lightd`

## About those files.

This exemple uses our cookbook for the kiosk found here:
https://www.noxgamingqc.ca/fr-ca/kiosk/cookbook

Make sure to edit `ngst/kiosk.sh` for each RaspberryPi.

The complete setup instruction will be listed [here](setup.md).
