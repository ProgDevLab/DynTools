# DynTools : Docker : API

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Docker : API](#dyntools--docker--api)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Open API](#open-api)

## Description

Docker have an API to manage container, you can open it to your **main network** if you want.

## Open API

This is some command to open your **Docker API** to your **main network** :

```bash
sudo vim /lib/systemd/system/docker.service

# Replace the line ExecStart by this line
ExecStart=/usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock -H=tcp://0.0.0.0:2375

# Reload Docker
sudo systemctl daemon-reload
sudo systemctl restart docker
```

Now you can access your **Docker server** through another PC in your **main network** :

```bash
curl http://localhost:2375/images/json
# OR
docker -H 192.168.X.X ps
```
