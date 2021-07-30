Weekly updated CentOS Docker images
===================================

[![build](https://github.com/tgagor/docker-centos-stream/actions/workflows/build.yml/badge.svg?branch=master)](https://github.com/tgagor/docker-centos-stream/actions/workflows/build.yml)

## Supported tags and respective Dockerfile links

* [latest, centos8, 8, 1.3.1-centos8, 1.3.1](https://github.com/tgagor/docker-centos/blob/master/centos8/Dockerfile)
* [stream, stream8, 1.3.1-stream8](https://github.com/tgagor/docker-centos/blob/master/centos8/Dockerfile)
* [stream9, 1.3.1-stream9](https://github.com/tgagor/docker-centos/blob/master/centos8/Dockerfile)
* [centos7, 7, 1.3.1-centos7](https://github.com/tgagor/docker-centos/blob/master/centos7/Dockerfile)

Version numbers use [SemVer](https://semver.org) and they reflect changes done in this repo - they are NOT related to CentOS versioning. For example, each weekly build will rise version number on last place, meaning patch level update.

## Updates

CentOS Team stopped updating their base images on Docker hub.  They moved to [quay.io](https://quay.io/repository/centos/centos?tab=tags) now, but even there images for CentOS 7 and CentOS 8 are around half a year old. I decided to rebuild them weekly, installing all updates.

## Security
My mages are automatically scanned for security issues, actual results are available here: https://github.com/tgagor/docker-centos/security/code-scanning

## Images
You can fetch docker image from:
* [tgagor/centos](https://hub.docker.com/repository/docker/tgagor/centos)

## More info

More info: https://timor.site/2021/07/official-centos-8-stream-docker-image-finally-available/
