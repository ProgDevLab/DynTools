# DynTools : Docker : Install

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Docker : Install](#dyntools--docker--install)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Docker](#docker)
    - [Linux Script](#linux-script)
    - [Linux Standard](#linux-standard)
  - [Docker Desktop](#docker-desktop)

## Description

Docker is a great container engine, this documentation is for install it on your Linux server or Linux desktop or Windows.

## Docker

Before install Docker, you need to configure a Docker group on Linux to give some permission to use Docker to another users :

```bash
sudo /usr/sbin/groupadd docker
sudo /usr/sbin/usermod -aG docker USERNAME
```

Now you can install Docker.

### Linux Script

There are multiple way to install Docker, here is the easy way to install it with a script :

```bash
cd /tmp

# Get Docker Install Script
curl -fsSL https://get.docker.com -o get-docker.sh

# Install Docker
sudo sh get-docker.sh

rm get-docker.sh
```

### Linux Standard

This is the best way to install Docker, but it's more complicated, this use this [documentation](https://docs.docker.com/engine/install/) :

Example for Debian :

```bash
# Uninstall old versions
sudo apt-get remove docker docker-engine docker.io containerd runc

# Install dependencies
sudo apt-get update
sudo apt-get install \
  ca-certificates \
  curl \
  gnupg \
  lsb-release

# Add Official Docker GPG Key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Setup Repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
```

## Docker Desktop

Now on Linux or Windows, you can install Docker Desktop that is a great tools to learn and use Docker :

- Install on [Linux](https://docs.docker.com/desktop/install/linux-install/)
- Install on [Windows](https://docs.docker.com/desktop/install/windows-install/)
