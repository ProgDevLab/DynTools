# DynTools : Linux : WakeOnLan

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Linux : WakeOnLan](#dyntools--linux--wakeonlan)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Requirements](#requirements)
  - [WakeOnLan](#wakeonlan)
  - [Resources](#resources)

## Description

If you want and if your material can do it, you can activate the **WakeOnLan** on your system, with this, you can **start your machine with your smartphone**. On Linux it can be more complicated to do this, so here a little tutorial for this.

## Requirements

You need some requirements to install before activate the **WakeOnLan** system :

```bash
sudo apt update
sudo apt install -y ethtool
```

With **ethtool**, we can get some informations on our ethernet card (yes you can do the WakeOnLan with an ethernet card, not in wifi !).

## WakeOnLan

```bash
# Use this command to find the name of your ethernet card, it's MAC address and it's IP
ip a
# My ethernet card is enp0s5
# With MAC address : 55:55:77:54:DE:EE
# And the IP : 192.168.1.24

# Use EthTool to check information on it
sudo ethtool enp0s5
# Supports Wake-on haven't to be "d", if you need to buy another card

# Create the script to activate your WakeOnLan
sudo echo "#!/bin/bash
ethtool -s enp0s5 wol g" > /usr/bin/wakeup

# Create a SystemD service to automatically activate the WakeOnLan
sudo echo "[Unit]
Description=WakeUp service
After=network.target

[Service]
ExecStart=/usr/bin/wakeup

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/wakeup.service

# Finally activate it
sudo systemctl start wakeup
sudo systemctl enable wakeup
```

Now you can use the MAC and IP address on a WakeOnLan app on smartphone or other PC to test start your machine with your smartphone.

## Resources

- [Tutorial for Linux Mint](https://community.linuxmint.com/tutorial/view/1062)
- [Root Command at Startup](https://easylinuxtipsproject.blogspot.com/p/root-command-startup.html)
