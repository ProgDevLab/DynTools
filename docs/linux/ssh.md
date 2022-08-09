# DynTools : Linux : SSH Security

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Linux : SSH Security](#dyntools--linux--ssh-security)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Install and setup SSH Server](#install-and-setup-ssh-server)
  - [Configure the SSH Server](#configure-the-ssh-server)
  - [Switch to SSH Keys Authentication](#switch-to-ssh-keys-authentication)
  - [Fail2Ban](#fail2ban)
  - [Resources](#resources)

## Description

SSH is one of the first entry to configure your server, you need to secure it to secure your server, mainly if your server are available directly on internet.

## Install and setup SSH Server

Normally, your server have the SSH Server installed, but here is how to install it :

```bash
sudo apt install openssh-server
sudo systemctl enable sshd
sudo systemctl start sshd
```

Now you can try to connect to it with this command :

```bash
ssh username@server-ip
```

## Configure the SSH Server

Your main SSH Server configuration is the file : **/etc/ssh/ssh_config** or **/etc/ssh/sshd_config**

Here some modification to do in this file :

```conf
# Change Default SSH Server Port from 1024 to 32,767
Port 2222

# Disable Root Login
PermitRootLogin no

# Use only SSH Protocol 2
Protocol 2

# Idle timeout interval
ClientAliveInterval 360
ClientAliveCountMax 0

# Disable empty password
PermitEmptyPasswords no

# Limit Users SSH Access if you want
AllowUsers user1 user2

# Disable Password Authentication if you want (need to setup a SSH pair of keys)
PasswordAuthentication no
```

Finally you can **restart** it to take change in count :

```bash
sudo systemctl restart ssh
```

## Switch to SSH Keys Authentication

This is a best authenticate method because you use a pair of **public and private key** to connect to your server, so no password.

First you need to **generate** a pair of **public and private keys** :

```bash
# You can enter a passphrase or not to more secure your keys
ssh-keygen -t rsa
```

You will find in the folder **~/.ssh** two files :

- **id_rsa** : Private Key
- **id_rsa.pub** : Public Key

Next copy your **public key** to your server in the **~/.ssh** folder.

Now you can **login** with your pair of key.

## Fail2Ban

**Fail2Ban** is a software to **secure** some **bad attempt** to your server, we will use it for our **SSH Server**, but you can use it for **other services**.

First of all, you need to **install** it :

```bash
sudo apt install fail2ban
sudo systemctl start fail2ban
sudo systemctl enable fail2ban
sudo systemctl status fail2ban
```

Create a new jail config : /etc/fail2ban/jail.d/defaults.conf

```conf
[DEFAULT]
destemail = mon-email@mail.fr
sender = root@domaine.fr

[sshd]
enabled = true
port = 2222
maxretry = 10
findtime = 120
bantime = 1200

[sshd-ddos]
enabled = true

[recidive]
enabled = true
```

To apply it you need to restart the service :

```bash
sudo systemctl restart fail2ban
```

## Resources

- [10 Steps to Secure Open SSH](https://blog.devolutions.net/2017/04/10-steps-to-secure-open-ssh/)
- [Buzut Fail2Ban](https://buzut.net/installer-et-parametrer-fail2ban/)
- [Phoenixnap](https://phoenixnap.com/kb/fail2ban)
