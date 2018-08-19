# OpenSMTPD Docker Container Image

[![Build Status](https://travis-ci.org/anaxexp/opensmtpd.svg?branch=master)](https://travis-ci.org/anaxexp/opensmptd)
[![Docker Pulls](https://img.shields.io/docker/pulls/anaxexp/opensmtpd.svg)](https://hub.docker.com/r/anaxexp/opensmtpd)
[![Docker Stars](https://img.shields.io/docker/stars/anaxexp/opensmtpd.svg)](https://hub.docker.com/r/anaxexp/opensmtpd)
[![Docker Layers](https://images.microbadger.com/badges/image/anaxexp/opensmtpd.svg)](https://microbadger.com/images/anaxexp/opensmtpd)

## Docker Images

!!! For better reliability we release images with stability tags (`anaxexp/opensmtpd:6-X.X.X`) which correspond to [git tags](https://github.com/anaxexp/opensmtpd/releases). We **STRONGLY RECOMMEND** using images only with stability tags.

Overview:

* All images are based on Alpine Linux
* Base image: [anaxexp/alpine](https://github.com/anaxexp/alpine)
* [Travis CI builds](https://travis-ci.org/anaxexp/opensmtpd) 
* [Docker Hub](https://hub.docker.com/r/anaxexp/opensmtpd)

Supported tags and respective `Dockerfile` links:

* `6`, `6.0`, `latest` [_(Dockerfile)_](https://github.com/anaxexp/opensmtpd/tree/master/Dockerfile)

## Environment Variables

| Variable                     | Default Value | Description |
| ---------------------------- | ------------- | ----------- |
| `OPENSMTPD_BOUNCE_WARN`      | `1h, 6h, 2d`  |             |
| `OPENSMTPD_EXPIRE`           | `4d`          |             |
| `OPENSMTPD_MAX_MESSAGE_SIZE` | `35M`         |             |
| `RELAY_HOST`                 |               |             |
| `RELAY_USER`                 |               |             |
| `RELAY_PASSWORD`             |               |             |
| `RELAY_PORT`                 | `587`         |             |

## Orchestration actions

Usage:
```
make COMMAND [params ...]

commands:
    check-ready [host max_try wait_seconds delay_seconds]

default params values:
    host localhost
    max_try 1
    wait_seconds 1
    delay_seconds 0
```

## Deployment

Deploy OpenSMTPD to your own server via [![AnaxExp](https://www.google.com/s2/favicons?domain=anaxexp.io) AnaxExp](https://anaxexp.io).
