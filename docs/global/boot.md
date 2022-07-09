# DynTools : Boot Key

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Boot Key](#dyntools--boot-key)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Material](#material)
  - [Windows](#windows)
  - [Linux](#linux)
  - [How to create a USB Boot Key](#how-to-create-a-usb-boot-key)
  - [Tutorials](#tutorials)
  - [Special Tools : Ventoy](#special-tools--ventoy)
    - [How to use it ?](#how-to-use-it-)

## Description

When you need to install a new operating system, you need to create a **USB Boot Key** (or a CD Boot, but never now).

You install a operating system installation package on a USB Key to boot on with your machine and install the system (or try it with Linux in **live mode**).

There are **multiple software and way** to create a USB Boot key, on **Linux** and on **Windows** :

## Material

You need just a **USB Key** to do this, the best size of this key will be **16 - 32 GB**, you don't need more. For **recent PC** you can use a **big sized USB Key** like in **128 GB**, but be careful, **for older PC they don't works, you will need a little size** (also for **BIOS update**, you need a key which can be converted to **FAT32**, so **with a little size**).

## Windows

- Softwares available :
  - [Rufus](https://rufus.ie/fr/) : Best for create Windows and Linux USB Boot Key
  - [Etcher](https://www.balena.io/etcher/) : Good for create Linux USB Boot Key
  - [LinuxLive USB Creator](https://www.linuxliveusb.com/) : Good for create Linux USB Boot Key

## Linux

- Softwares available :
  - [Etcher](https://www.balena.io/etcher/) : Good for create Linux USB Boot Key
  - [WoeUSB](https://www.fossmint.com/woeusb-create-bootable-windows-usb-sticks-from-linux/) : Good for create Windows USB Boot Key

> For **Etcher** the best way is to download it from [GitHub Repository](https://github.com/balena-io/etcher/releases)

## How to create a USB Boot Key

1) Download the **installation ISO** of the Operating System you want.
2) Use one of these softwares to **write the ISO on a USB Key**.
3) Boot on this USB Key on the **machine you want** to install this operating system (keyboard key **DELETE** / **SUPPR** or **ESCAPE** or **TAB** or **F1** or **F2** or **F11**, you can find it on the manual of your mothercard).
4) Install your operating system.

## Tutorials

- [Bootable Windows USB Key from Linux](https://itsfoss.com/bootable-windows-usb-linux/)

## Special Tools : Ventoy

[Ventoy](https://www.ventoy.net/en/index.html) is a **great tools** to create a **USB Key** with **multiple** boot ISO if you want to create a USB Key with a **Linux ISO** and a **Windows ISO** and make them **bootable**, it's great to save some USB Key when you make some **Dual boot**, you can also add some **tools ISO** like **GParted** (manage disk partition) or **other**.

> You can find if the **ISO** you want to add is **supported** on this [page](https://www.ventoy.net/en/isolist.html) !

### How to use it ?

Here some step to use it in any system (**Windows** or **Linux**) :

1) First you need to **download the tools** and **install it**, to do this, go to the [download page](https://www.ventoy.net/en/download.html) and select the **package** you want (also available as **livecd** if you want !), normally they **redirect** you to this [GitHub Release page](https://github.com/ventoy/Ventoy/releases).
2) **Unzip** your archive in a **good programs folder** (**/opt/ventoy** for **Linux** and **C://Program Files/Ventoy** for **Windows**).
3) Next you can launch **Ventoy** with the **GUI** depending of your **architecture** (**VentoyGUI.x86_64** for a **x86-64** architecture)
4) You can **configure** the **language** and some **parameters** (personally I recommend to configure the **Partition Configuration** and **preserve some GB** at the end of the disk, so you can create a little volume to store **some data** if you want).
5) Select your **USB Key** and click on **Install**.
6) Now Ventoy is installed on your **USB Key** and you can **relaunch Ventoy** to **update** the version on your **USB Key** if you want in **future**.
7) Finally you can place your **ISO** or **any other format** of files in your **USB Key Ventoy** (also works in **sub folders** if you want to **organize** them) and **Ventoy** will detect them automatically when you will **boot** on it.

> **Have fun** like me and now you need juste **ONE** USB Boot Key !
