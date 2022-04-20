# DynTools

[![License : MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

![Icon](./icon.png)

[Pen tool icons created by Vitaly Gorbachev - Flaticon](https://www.flaticon.com/free-icons/pen-tool)

## Table Of Contents

- [DynTools](#dyntools)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Access](#access)
  - [Documentations](#documentations)
    - [Global Documentations](#global-documentations)
    - [Docker Documentations](#docker-documentations)
    - [Linux Documentations](#linux-documentations)
  - [Development](#development)
    - [Requirements](#requirements)
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
  - [DynTools Docs Production](https://dyntools-docs)

## Documentations

### Global Documentations

- [Ideas](./docs/ideas.md)

### Docker Documentations

- TODO

### Linux Documentations

- TODO

## Development

If you want you can **develop** this repository :

1) You need to install the [Requirements](#requirements)
2) You can develop on [Docsify](#docsify)

### Requirements

We use **Docker** :

- Docker
- Docker Compose

### Docsify

```bash
cd docsify

# Development
docker-compose -f docker-compose.dev.yml up

# Production
docker-compose up --build
```

## Contributing

See [CONTRIBUTING](./CONTRIBUTING.md) for more information.

## Licence

This project is licensed under the terms of the MIT license.

See [LICENSE](./LICENCE.md) for more information.
