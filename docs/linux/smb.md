# DynTools : Linux : SMB

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Linux : SMB](#dyntools--linux--smb)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Requirements](#requirements)
  - [Mount and Unmount Command](#mount-and-unmount-command)
  - [Docker Volume and Docker Compose](#docker-volume-and-docker-compose)
  - [Portainer Setup](#portainer-setup)

## Description

**SMB** for **Server Message Block** is a **great system** to **share** some of your folder on your disk with other computer specially with **Windows**, but **Linux** can connect to it too well. It's perfect to use with Windows system to store your data in a **network drive** (you can also use it in a Docker Volume).

## Requirements

You need to install some requirements to use SMB :

```bash
sudo apt install -y cifs-utils
```

## Mount and Unmount Command

**Manual Mount** :

```bash
sudo mount -t cifs //192.168.X.X/data_01 /media/data_01
```

**Automatic Mount** : To do this, you have to edit the **/etc/fstab** file

```bash
sudo vim /etc/fstab

# Add this line at the end of the document
//192.168.X.X:/data_01 /media/data_01 cifs user=USER,pass=PASSWORD,uid=1000,nounix,noauto,x-systemd.automount,dir_mode=0777,file_mode=0666 0 0
```

**Unmount** :

```bash
sudo umount -f /media/data_01
```

## Docker Volume and Docker Compose

With Docker, you can setup each volumes as SMB / CIFS volume, with that, you can use a network shared storage for each of your container.

```yaml
volumes:
  portainer-data-smb:
    driver: local
    driver_opts:
      type: "cifs"
      o: "user=USER,pass=PASSWORD,uid=1000,nounix,noauto,x-systemd.automount,dir_mode=0777,file_mode=0666"
      device: "//192.168.X.X/data_01/portainer_data"

services:
  portainer-smb:
    container_name: portainer-smb
    image: portainer/portainer
    ports:
    - 9000:9000
    volumes:
    - /var/run/docker.sock:/var/run/docker.sock:rw
    - portainer-data-smb:/data:rw
```

## Portainer Setup

You can also create these SMB / CIFS Docker Volumes with Portainer on the web interface, you just have to configure these parameters :

- **Name** : portainer-smb
- **Driver** : local
- **Use CIFS Volume** : Checked
- **Address** : 192.168.X.X
- **Share** : /data_01/portainer_data
- **CIFS Version** : CIFS 3.0
- **Username** : USER
- **Password** : PASSWORD
