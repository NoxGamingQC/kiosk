# Setup instruction

Right now you should have a fresh installation. We will walk through all the configuration of the system.

## Wifi

First of all you will need to have wifi setup if you don't have an ethernet cable, here's how to set it up:

- Access the right file: `sudo nano /etc/wpa_supplicant/wpa_supplicant.conf`
- Add the following at the bottom of the file:
```
network={
ssid="The SSID of your network (eg. Network name)"
psk="Your Wifi Password"
}
```

### The project

If you want to have everything to work well you will need this project ;)

- Copy the file called `autostart` in : `/home/pi/config/lxsession/LXDE-pi/autostart`
- Copy and paste the ngst folder in `/home/pi`

Now, you should be good to go
