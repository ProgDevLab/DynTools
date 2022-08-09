# DynTools : Linux : Nano

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Linux : Nano](#dyntools--linux--nano)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Installation](#installation)
  - [Basic Command](#basic-command)
  - [Resources and tutorials](#resources-and-tutorials)

## Description

Nano is a basic terminal text editor, we use it a lot when we are on a server with no graphical interface but just a terminal. Nano is often already installed on many Linux distribution.

## Installation

Before install it, check if it's **not installed yet** :

```bash
nano --version
```

To install it with **APT** :

```bash
sudo apt install nano
```

To install it with **YUM** :

```bash
sudo yum install nano
```

## Basic Command

Opening and creating a files if not exist :

```bash
nano filaname
nano ./filename
nano /etc/hosts
```

Basic editor command : ("^" represent the CTRL key !)

- **CTRL + X** : Exit (Next enter Y to save the file and press ENTER to confirm the filename to save)

Each command are available at the **bottom** of the interface, if you want more **key or shortcut**, go to some tutorials.

## Resources and tutorials

- [Linuxize : How to Use Nano, the Linux Command Line Text Editor](https://linuxize.com/post/how-to-use-nano-text-editor/)
- [Hostinger : Nano Tutorial](https://www.hostinger.fr/tutoriels/nano)
