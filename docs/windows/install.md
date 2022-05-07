# DynTools : Windows : Install Package Manager

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Windows : Install Package Manager](#dyntools--windows--install-package-manager)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Windows Package Manager : Chocolatey](#windows-package-manager--chocolatey)

## Description

On Windows you have the **Windows Store** to install the software you want, but **not all are on this store**, so you can create a **little script** with a **Windows Package Manager** to install each software you want and also **update these**.

## Windows Package Manager : Chocolatey

Chocolatey is a Package Manager for Windows, like APT for Linux, you can with some command install the package you want.

- [Website](https://chocolatey.org/)
- [How to install it](https://chocolatey.org/install)
- [Search a package name](https://community.chocolatey.org/packages)

You can install it with this command (**BE CAREFUL**, you need to run an **Admin PowerShell console**) :

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

You can use the **Script Builder** to create your **own script** to install software or juste **write manually** yours : **install.bat**

```console
:: Install Document Software
choco install keepass -fy
choco install libreoffice-fresh -fy

:: Install Utility Software
choco install 7zip -fy
choco install firefox -fy
choco install skype -fy
choco install microsoft-teams -fy
choco install spotify -fy
choco install teamviewer -fy
choco install vlc -fy

pause
```

Get started with : **choco -?**
