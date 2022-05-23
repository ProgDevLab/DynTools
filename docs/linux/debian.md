# DynTools : Linux : Debian

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Linux : Debian](#dyntools--linux--debian)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [SUDO Installation](#sudo-installation)
  - [Network Configuration](#network-configuration)

## Description

**Debian** is a very good **Linux distribution** to setup a **clean server**, it's **litter than Ubuntu** and let you install all you need **manually**.

You can find a **Debian** Image [Here](https://www.debian.org/distrib/).

## SUDO Installation

At start on a **console Debian**, you don't have **SUDO system**, but you can install it to grant some user a **admin permission** :

```bash
su root
Password = ROOT PASSWORD

apt-get update
apt-get install -y sudo

/usr/sbin/usermod -aG sudo USER
```

## Network Configuration

If you want, you can change the Network setting in Debian to get an IPv4 fixed :

Here with the network card **ens3**, you can find your **network card** with this command : **ip a**

```bash
sudo -s
ip a
vim /etc/network/interfaces

# I to insert some text in the file

allow-hotplug ens3

iface ens3 inet static
  address 192.168.1.X/24
  gateway 192.168.1.1

# Escape + :wq to save with VIM (:q! to quit without save)

/sbin/ifdown ens3 --force
/sbin/ifup ens3 --force
ip a
```
