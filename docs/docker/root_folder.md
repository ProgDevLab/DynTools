# DynTools : Docker : Root Folder

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Docker : Root Folder](#dyntools--docker--root-folder)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Change the Root Folder](#change-the-root-folder)

## Description

If you **haven't enough storage** to install your Docker **images** and **volumes** on your main disk, you can change the **root folder** of Docker to move it to another disk with **more storage available**.

> Be carefull, to change your root Docker folder, you need a disk with EXT4 filesystem !

## Change the Root Folder

You have some step to change the root folder of Docker :

First you need to **stop Docker** :

```bash
sudo systemctl stop docker
sudo systemctl stop docker.socket
```

Next you have to **configure Docker** to use a new **root folder** : (in this example, we move the root folder of Docker to **/mnt/data/system/docker**)

```bash
sudo vim /etc/docker/daemon.json
{ 
    "data-root": "/mnt/data/system/docker" 
}
```

Now you can **move** your Docker root folder :

```bash
sudo cp -R /var/lib/docker/* /mnt/data/system/docker/
sudo mv /var/lib/docker /var/lib/docker.old
```

**Start** your Docker to check if all are ready :

```bash
sudo systemctl start docker
sudo systemctl start docker.socket
```

If there **aren't any problem**, you can **delete** your **older Docker root folder** :

```bash
sudo rm -rf /var/lib/docker.old
```
