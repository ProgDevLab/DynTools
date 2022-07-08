# DynTools : Linux : NFS

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Linux : NFS](#dyntools--linux--nfs)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Requirements](#requirements)
  - [Mount and Unmount Command](#mount-and-unmount-command)
  - [Docker Volume and Docker Compose](#docker-volume-and-docker-compose)
  - [Portainer Setup](#portainer-setup)

## Description

**NFS** for **Network File System** is a **great system** to **share** some of your folder on your disk with other computer specially with **Linux**, but **Windows** can connect to it too. It's perfect to use with **Docker Container** to store your data in a **network drive**.

## Requirements

You need to install some requirements to use NFS :

```bash
sudo apt install -y nfs-common
```

## Mount and Unmount Command

**Manual Mount** :

```bash
sudo mount -o nolock,soft,rw -t nfs 192.168.X.X:/mnt/data_01 /media/data_01
```

**Automatic Mount** : To do this, you have to edit the **/etc/fstab** file

```bash
sudo vim /etc/fstab

# Add this line at the end of the document
192.168.X.X:/mnt/data_01 /media/data_01 nfs nolock,soft,rw 0 0
```

**Unmount** :

```bash
sudo umount -f /media/data_01
```

## Docker Volume and Docker Compose

With Docker, you can setup each volumes as NFS volume, with that, you can use a network shared storage for each of your container.

Don't forget **nolock** and **soft** parameters !

```yaml
volumes:
  portainer-data-nfs:
    driver: local
    driver_opts:
      type: "nfs"
      o: "addr=192.168.X.X,nolock,soft,rw"
      device: ":/mnt/data_01/portainer_data"

services:
  portainer-nfs:
    container_name: portainer-nfs
    image: portainer/portainer
    ports:
    - 9000:9000
    volumes:
    - /var/run/docker.sock:/var/run/docker.sock:rw
    - portainer-data-nfs:/data:rw
```

## Portainer Setup

You can also create these NFS Docker Volumes with Portainer on the web interface, you just have to configure these parameters :

- **Name** : portainer-nfs
- **Driver** : local
- **Use NFS Volume** : Checked
- **Address** : 192.168.X.X
- **NFS Version** : NFS
- **Mount point** : /mnt/data_01/portainer_data
- **Options for NFS Setup** : nolock,soft,rw
