# DynTools

[![License : MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

![Icon](./icon.png)

[Pen tool icons created by Vitaly Gorbachev - Flaticon](https://www.flaticon.com/free-icons/pen-tool)

## Table Of Contents

- [DynTools](#dyntools)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Access](#access)
  - [Tools](#tools)
    - [Global](#global)
    - [Docker](#docker)
    - [Linux](#linux)
    - [Machine](#machine)
    - [Windows](#windows)
  - [Development](#development)
    - [Docsify](#docsify)
  - [Contributing](#contributing)
  - [Licence](#licence)

## Description

Group of Tools used in other projects.

## Access

- **Development (Local)** :
  - [DynTools Docs Development](http://localhost:6007)
- **Production (Local)** :
  - [DynTools Docs Production](http://localhost:6007)
- **Production** :
  - [DynTools Docs Production](https://progdevlab.gitlab.io/dyntools)

## Tools

### Global

- [Ideas](./docs/global/ideas.md)
- [Boot Key](./docs/global/boot.md)
- [Makefile](./docs/global/makefile.md)
- [Backup](./docs/global/backup.md)

### Docker

- [Install](./docs/docker/install.md)
- [API](./docs/docker/api.md)
- [Root Folder](./docs/docker/root_folder.md)
- [Build](./docs/docker/build.md)
- [Useful](./docs/docker/useful.md)

### Linux

- [Debian](./docs/linux/debian.md)
- [Mint](./docs/linux/mint.md)
- [WakeOnLan](./docs/linux/wol.md)
- [GRUB Boot Menu](./docs/linux/grub.md)
- [ZFS](./docs/linux/zfs.md)
- [NFS](./docs/linux/nfs.md)
- [SMB](./docs/linux/smb.md)
- [Nano](./docs/linux/nano.md)
- [VIM](./docs/linux/vim.md)
- [SSH Security](./docs/linux/ssh.md)
- [Git](./docs/linux/git.md)
- [PDF and PNG Tools](./docs/linux/pdf_png.md)

### Machine

- [ODROID HC4](./docs/machine/odroid_hc4.md)

### Windows

- [Install Package Manager](./docs/windows/install.md)
- [Git](./docs/windows/git.md)

## Development

If you want you can **develop** this repository :

1) You need to install **Docker**
2) You can develop on [Docsify](#docsify)

### Docsify

```bash
# Development
make build-dev
make start-dev
make stop-dev

# Production
make build
make start
make stop
```

## Contributing

See [CONTRIBUTING](./CONTRIBUTING.md) for more information.

## Licence

This project is licensed under the terms of the MIT license.

See [LICENSE](./LICENCE.md) for more information.
