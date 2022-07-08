# DynTools : Linux : Debian

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Linux : Debian](#dyntools--linux--debian)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Base Install](#base-install)
  - [Machine Name](#machine-name)
  - [SUDO Installation](#sudo-installation)
  - [Network Configuration](#network-configuration)

## Description

**Debian** is a very good **Linux distribution** to setup a **clean server**, it's **litter than Ubuntu** and let you install all you need **manually**.

You can find a **Debian** Image [Here](https://www.debian.org/distrib/).

## Base Install

When you install Debian, you have to setup some configuration :

1) Select Language for system and keyboard.
2) Configure the [name of your machine](#machine-name) and the repository for the package manager.
3) Configure your root user and the main user.
4) Choose the disk your want to install your system and accept the change to write the system.
5) Wait for the basic system installation.
6) Select as minimum for software :
   1) SSH Server
   2) System utility

## Machine Name

When you install Debian, you'll be asked for a machine name and a domain name, you have to setup it correctly like this :

- **With a domain name** :
  - **Machine name** : testy
  - **Domain name** : test.net
  - **Final access** : testy.test.net
- **Without a domain name** :
  - **Machine name** : testy
  - **Domain name** : localhost
  - **Final access** : testy.localhost

If you have a problem with your hostname, you can run these command :

```bash
# Check the current hostname
sudo hostnamectl

# Set the hostname to localhost
sudo hostnamectl set-hostname localhost

# Check the new current hostname
sudo hostnamectl
```

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
