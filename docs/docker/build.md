# DynTools : Docker : Build

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Docker : Build](#dyntools--docker--build)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Best Build Way](#best-build-way)
  - [DockerFile](#dockerfile)
  - [Docker Compose](#docker-compose)
  - [Environment File](#environment-file)
  - [Docker Ignore File](#docker-ignore-file)
  - [Package Manager](#package-manager)

## Description

When you use Docker, you'll need to build an image and test some action if you want, here some documentation for this.

## Best Build Way

When you build a new Docker Image, you have several options, the best of these is to use :

- A Docker file
- A Docker Compose file
- An Environment File (Dotenv file)
- A Docker Ignore File
- A Package Manager

## DockerFile

When you need to build a new Docker Image, you need a Dockerfile, you can also have multiple file :

- **Dockerfile** : For Production Build
- **Dockerfile.dev** : For Development Build

You have several step to create a good Dockerfile :

1) Choose a good image with LTS (Long Time Support) and specify the version of your base image
2) Install all dependencies you need (you can also copy just the package manager definition file and install all)
3) Copy your sources file into your image
4) Define some image properties (Ports, Volumes, ...) BUT not the Healthcheck, you have to config it in the Docker Compose file
5) Setup an entrypoint file if you want to perform some action before start your container
6) Finish by enter the startup command for your container

Here a sample (for **Development**) : **Dockerfile.dev**

```Dockerfile
FROM node:16.13-bullseye-slim

WORKDIR /app

# Dependencies installation
RUN npm install -g docsify-cli@latest

# Source code copy
COPY ./src /app

# Expose Server Port
EXPOSE 3000

# Development launch command
CMD [ "docsify", "serve", "." ]
```

Here a sample (for **Production**) : **Dockerfile**

```Dockerfile
FROM nginx:1.20-alpine

# Copy sources files
COPY ./index.html /usr/share/nginx/html/index.html
```

## Docker Compose

When you need to run your Docker Image, you need a Docker Compose file to organize these, you can also have multiple file :

- **docker-compose.yml** : For Production Run
- **docker-compose.dev.yml** : For Development Run

Here a sample : **docker-compose.yml**

```yaml
---
version: '3.6'

services:
  testy:
    container_name: testy
    image: testy:latest
    build:
      context: .
      dockerfile: ./Dockerfile
    ports:
    - 6007:80
    restart: unless-stopped

```

When you have your Docker Compose file, you can run these :

```bash
# Development Build
docker-compose -f docker-compose.dev.yml build
# Development Libs install
docker-compose -f docker-compose.dev.yml run --service-ports --rm testy npm install
# Development Run
docker-compose -f docker-compose.dev.yml up

# Production Build
docker-compose build
# Production Run
docker-compose up
```

## Environment File

When you build a **great application with Docker**, you need to **store each variable** you use into **Docker Secret** (when there are password or sensitive information) or into a **dotenv file** to setup these in one file :

Here a **.env** sample :

```bash
# Global Vars
APP_NAME=Testy

# Development Vars
APP_VERSION=0.1.5

# Production Vars
APP_VERSION=0.1.0
```

Here how to use these in a Docker Compose file : **docker-compose.yml**

```yaml
---
version: '3.6'

services:
  testy:
    image: testy:latest
  environment:
  - 'NAME=${APP_NAME}'
  - 'VERSION=${APP_VERSION}'
```

## Docker Ignore File

When you build a Docker Image, you have some file you don't want to integrate into your build (like temporary folder, library folder, ...)

With a little file : **.dockerfile**, you can set some folder or files to ignore when you build your Docker Image.

Here a **.dockerfile** sample :

```bash
# Temporary Folder
**/tmp

# VS Code
**/.vscode
```

## Package Manager

When you setup a **new application** with a **good programming language**, you need to also setup a package manager to do a **great management of all librairies** you need.

Some example of **package manager** :

- **APT** : Ubuntu and Debian Package Manager
- **Pip / PDM / Pipenv / Poetry** : Python Package Manager
- **NPM / YARN** : Node Package Manager
