# DynTools : Machine : ODROID HC4

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Machine : ODROID HC4](#dyntools--machine--odroid-hc4)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Documentations](#documentations)
  - [Petitboot Update](#petitboot-update)
  - [Petitboot Install](#petitboot-install)
  - [OLED Display](#oled-display)

## Description

**ODROID HC4** is a great storage server with **ARM low consumption processor**, so we can setup a little **NAS** or **Storage Server** with it.

## Documentations

- [ODROID HC4](https://www.hardkernel.com/shop/odroid-hc4/)
- [Wiki](https://wiki.odroid.com/odroid-hc4/odroid-hc4)
- [Install OMV](https://wiki.odroid.com/odroid-hc4/software/install_omv_nas)
- [Hardware OLED](https://wiki.odroid.com/odroid-hc4/hardware/hardware)

## Petitboot Update

When you install some system on it, you need to update the Petitboot before install the system :

1) Connect a monitor and an ethernet cable connected to internet without an SD card to display the Petitboot interface.
2) Power on the machine and select **Exit to Shell**, enter **pb-update** on the shell.
3) The boot will be updated

## Petitboot Install

With Petitboot, we can with internet access install the lasted Debian OS on our machine without an USB Boot Key.

To install a Debian for example, use these step :

1) Connect a monitor and an ethernet cable connected to internet without an SD card to display the Petitboot interface.
2) Power on the machine and select **Exit to Shell**, enter **netboot_default** on the shell (use tab after **netboot** to autocomplete).
3) There will be no outputs but, after going back to the main menu (enter **exit** for this) you can see the new menus for installing Ubuntu and Debian at the top of them.
4) Insert an SD card and select the system you want to install : Debian.
5) Follow the installation procedures and after that, you have your system installed on your machine.

## OLED Display

TODO
