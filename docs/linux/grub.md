# DynTools : Linux : GRUB Boot Menu

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Linux : GRUB Boot Menu](#dyntools--linux--grub-boot-menu)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Black Screen Error](#black-screen-error)

## Description

The **GRUB Boot Menu** is essential when you use Linux and Windows, you can configure it and solve problem with it.

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
