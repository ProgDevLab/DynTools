# DynTools : Linux : ZFS

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Linux : ZFS](#dyntools--linux--zfs)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Requirements](#requirements)
  - [Identify Disks](#identify-disks)
  - [Create Pool](#create-pool)
  - [Create Encrypted Pool](#create-encrypted-pool)
  - [Mount and Unmount Command](#mount-and-unmount-command)
  - [Auto Mount Encrypted Pool](#auto-mount-encrypted-pool)
  - [Maintenance](#maintenance)

## Description

**ZFS** for **Zettabyte File System** is a **great filesystem** with a **volume manager** to manage your storage and your RAID system with a lot of tools to help you in your storage management.

You have some documentations here :

- [ArchWiki ZFS](https://wiki.archlinux.org/title/ZFS)
- [Encrypted ZFS](https://timor.site/2021/11/creating-fully-encrypted-zfs-pool/)

## Requirements

You need to install some requirements to use ZFS :

```bash
sudo apt install -y zfsutils-linux
```

## Identify Disks

You need to save the name of the disk your want to register in a pool :

```bash
ls -lh /dev/disk/by-id/
```

## Create Pool

```bash
sudo zpool create -f \
  -m /mnt/data_01 \
  data_01 \
  mirror \
    ata-VBOX_HARDDISK_VB597e0f7b-f32cfcd6 \
    ata-VBOX_HARDDISK_VB59030c2d-2c695641
```

## Create Encrypted Pool

Before create your pool you need to setup a key :

```bash
sudo -s

# If Raw Key Type
dd if=/dev/random of=/root/.zfs-data-01.key bs=1 count=32

# If Passphrase Key Type
echo "PASSWORD" > /root/.zfs-data-01.key
```

Next you can create your pool :

```bash
# If Raw Key Type
sudo zpool create -f \
  -o feature@encryption=enabled \
  -O encryption=on \
  -O keylocation=file:///root/.zfs-data-01.key \
  -O keyformat=raw \
  -m /mnt/data_01 \
  data_01 \
  mirror \
    ata-VBOX_HARDDISK_VB597e0f7b-f32cfcd6 \
    ata-VBOX_HARDDISK_VB59030c2d-2c695641

# If Passphrase Key Type
sudo zpool create -f \
  -o feature@encryption=enabled \
  -O encryption=on \
  -O keylocation=file:///root/.zfs-data-01.key \
  -O keyformat=passphrase \
  -m /mnt/data_01 \
  data_01 \
  mirror \
    ata-VBOX_HARDDISK_VB597e0f7b-f32cfcd6 \
    ata-VBOX_HARDDISK_VB59030c2d-2c695641

zfs load-key -a
```

## Mount and Unmount Command

First of all, you can discover each Pool available with this command :

```bash
sudo zpool import
```

**Mount** :

```bash
sudo zpool import -f data_01
sudo zfs set mountpoint=/mnt/data_01 data_01
```

**Unmount** :

```bash
sudo zfs umount data_01
```

## Auto Mount Encrypted Pool

To auto mount an encrypted pool, you need to setup a SystemD Unit :

Edit the file **/etc/systemd/system/zfs-load-key.service** :

```text
[Unit]
Description=Load encryption keys
DefaultDependencies=no
After=zfs-import.target
Before=zfs-mount.service

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/sbin/zfs load-key -a
StandardInput=tty-force

[Install]
WantedBy=zfs-mount.service
```

Finally add it and active it :

```bash
sudo systemctl daemon-reload
sudo systemctl enable zfs-load-key
```

## Maintenance

With ZFS you can check and repare (if you can XD) your disk :

Check your Pool :

```bash
sudo zpool status data_01
```

Verify and Repare your Pool :

```bash
sudo zpool scrub data_01
```

Upgrade your pool :

```bash
sudo zpool upgrade data_01
```
