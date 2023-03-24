# DynTools : Docker : Useful

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Docker : Useful](#dyntools--docker--useful)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Temporary Container](#temporary-container)

## Description

Here are some useful commands to use Docker.

## Temporary Container

The **temporary container** is a great way to run any **basic image** with a **volume** (with current folder) and a **port** if needed, here is the command to use it :

```bash
# Debian example
docker run --rm -it -v ${PWD}:/app --workdir /app -p 8080:8080 debian:bullseye-slim bash
```

You can use **any image** you want like these :

- **Debian** : debian:bullseye-slim
- **Python** : python:3-slim-bullseye
- **NodeJS** : node:lts-bullseye-slim
