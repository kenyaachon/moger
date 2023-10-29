## Installation

![Build Status](https://github.com/kenyaachon/moger/actions/workflows/tests.yml/badge.svg?branch=main)

As of right now, moger CLI only supports MacOS, and Linux systems

`./bin/install.sh`

## Development

`poetry run moger`

### Docker

- Building Docker Image
  `docker build --tag moger .`
- Running Docker Image
  `docker run moger login`

### Moger Initialization

`poetry run moger init`

### Moger Login

`poetry run moger login non-prod`
