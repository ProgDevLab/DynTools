# DynTools : Vagrant : Install

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Vagrant : Install](#dyntools--vagrant--install)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Virtualization Engine](#virtualization-engine)
  - [Linux Script](#linux-script)
  - [Documentations](#documentations)

## Description

Vagrant is a great tool to help you create and manage virtual machine, this documentation is for install it on your Linux server or Linux desktop or Windows.

## Virtualization Engine

You need a virtualization engine to use Vagrant, here is the example with VirtualBox :

```bash
sudo apt update && sudo apt install -y virtualbox
```

If this don't work, you can download and install it directly [here](https://www.virtualbox.org/wiki/Linux_Downloads).

## Linux Script

There are multiple way to install Docker, here is the easy way to install it with a script :

```bash
# Install Keys
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

# Install Official Repository
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

# Install Vagrant
sudo apt update && sudo apt install vagrant
```

## Documentations

- [Installation](https://developer.hashicorp.com/vagrant/docs/installation)
