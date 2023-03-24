# DynTools : Makefile

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Makefile](#dyntools--makefile)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Documentations](#documentations)
  - [Installation](#installation)
  - [Example with Docker projects](#example-with-docker-projects)

## Description

**Makefile** are file that offer the possiblity to **automatize** some commands with the use of recipe to build your program or transform **complex commands** into **alias**, lile this for example :

```bash
# This
docker run --rm -it -v $PWD:/app --workdir /app debian:bullseye-slim bash

# Into This
make debian-bash
```

## Documentations

- [OpenSource Makefile](https://opensource.com/article/18/8/what-how-makefile)

## Installation

To use makefile, you just have to install Make :

For **Linux** :

```bash
sudo apt-get install build-essential

# Or

sudo apt-get install make
```

For **Windows** : You need to install [Chocolatey](../windows/install.md)

```bash
choco install make
```

## Example with Docker projects

Example with a project with **Frontend** and **Backend** with **Docker**, here the makefile : **Makefile**

```makefile
build: build-frontend build-backend

build-frontend:
    docker compose -f ./frontend/compose.yml build

build-backend:
    docker compose -f ./backend/compose.yml build
```

With this you can use these commands :

```bash
# Will build the Frontend and the Backend
make build

# Can also build these separately
make build-frontend
make build-backend
```
