# DynTools : Windows : Git

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Windows : Git](#dyntools--windows--git)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [CRLF to LF for Linux and Docker](#crlf-to-lf-for-linux-and-docker)

## Description

Git is a **Version Control System** and with this you can save each modification you want to commit. On Windows we can get some problem with it, so here some documentation to avoid these problems.

## CRLF to LF for Linux and Docker

When you program on Windows, each source files are in CRLF for the End of Line Sequence, but if you use Docker to run your code on Linux machine, you need to replace these CRLF to LF before, because Linux in programmation can't read it correctly.

You need to run these command to avoir the CRLF and get just LF :

```bash
git config --global core.autocrlf false
git config --global core.eol lf
```
