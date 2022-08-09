# DynTools : Linux : VIM

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Linux : VIM](#dyntools--linux--vim)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Installation](#installation)
  - [Basic Command](#basic-command)
  - [Resources and tutorials](#resources-and-tutorials)

## Description

VIM is a powerful terminal text editor, we use it a lot when we are on a server with no graphical interface but just a terminal.

## Installation

Before install it, check if it's **not installed yet** :

```bash
vim --version
```

To install it with **APT** :

```bash
sudo apt install vim
```

To install it with **YUM** :

```bash
sudo yum install vim
```

## Basic Command

Opening and creating a files if not exist :

```bash
vim filaname
vim ./filename
vim /etc/hosts
```

VIM is more advanced and have some "mode" of functioning, you can switch from mode to another with the ECHAP key :

- **Command mode** : Main mode when you press **ECHAP key**
- **Insert mode** : Mode to edit your file when you press **I key**.
- **Replacement mode** : Replace the text of the current line when you press **twice I key**.
- **Visual mode** : Select some text to apply some command on it when you press **V key**.

Basic editor command : When you are in command mode

- **:h** : Help
- **:w** : Save
- **:q** : Quit
- **:q!** : Quit without save
- **:wq** : Save and quit
- **/word** : to research a specific "word", press N to go to the next iteration
- **:line_number** : to go to a specific line of file

Next you can learn faster VIM with this interactive tutorial : [OpenVIM Tutorial](https://www.openvim.com/)

## Resources and tutorials

- [Computer Hope](https://www.computerhope.com/unix/vim.htm)
- [DanielMiessler](https://danielmiessler.com/study/vim/)
- [OpenVIM Tutorial](https://www.openvim.com/)
