# DynTools : Linux : GRUB Boot Menu

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Linux : GRUB Boot Menu](#dyntools--linux--grub-boot-menu)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Customize](#customize)
  - [Black Screen Error](#black-screen-error)

## Description

The **GRUB Boot Menu** is essential when you use Linux and Windows, you can configure it and solve problem with it.

## Customize

To customize your grub, you need a multi-boot system !

Linux Mint Special : You can activate the default Grub Menu of Linux Mint

```bash
sudo apt-get install grub2-theme-mint grub2-theme-mint-2k
```

First you need to install the Grub Customizer :

```bash
# For Ubuntu 22.10 only !
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt update

sudo apt install grub-customizer
```

**Resources** :

- [Grub Background](https://easylinuxtipsproject.blogspot.com/p/grub-background.html)
- [Grub 22.10](https://fostips.com/grub-customizer-ubuntu-22-10/)
- [Grub Global tutorial](https://itsfoss.com/customize-grub-linux/)
- [Grub Themes](https://www.gnome-look.org/browse?cat=109&ord=latest)

## Black Screen Error

With new models of computer, we have some error, to fix them like black screen, we can setup these command :

First on **GRUB Boot Menu** :

- Press "e" for edit GRUB
- Find "quiet splash" and replace it by this : "noapic noacpi nosplash irqpoll"

Next save this config into GRUB Menu :

```bash
sudo update-grub

sudo vim /etc/default/grub
# Change GRUB_CMDLINE_LINUX_DEFAULT="quiet splash" by GRUB_CMDLINE_LINUX_DEFAULT="noapic noacpi nosplash irqpoll"

# Save it with this command
sudo update-grub
```
