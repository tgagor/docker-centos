Weekly updated CentOS Docker images
===================================

[![build](https://github.com/tgagor/docker-centos/actions/workflows/build.yml/badge.svg?branch=master)](https://github.com/tgagor/docker-centos/actions/workflows/build.yml)
![GitHub](https://img.shields.io/github/license/tgagor/docker-centos)
![Docker Stars](https://img.shields.io/docker/stars/tgagor/centos)
![Docker Pulls](https://img.shields.io/docker/pulls/tgagor/centos)
![GitHub Release Date](https://img.shields.io/github/release-date/tgagor/docker-centos)

Those images are just standard CentOS base images, but:
1. With all the package updates installed weekly.
2. Squashed to single layer for smaller size.

## Supported tags and respective Dockerfile links

* [stream10, 10, 4.5.12-stream10, 4.5.12](https://github.com/tgagor/docker-centos/blob/master/Dockerfile)
* [latest, stream, stream9, 9, 4.5.12-stream9, 4.5.12](https://github.com/tgagor/docker-centos/blob/master/Dockerfile)

Version numbers use [SemVer](https://semver.org) and they reflect changes done in this repo - they are NOT related to CentOS versioning. For example, each weekly build will rise version number on last place, meaning patch level update.

## Image sizes

| Architecture | CentOS 9                                                                                                                              | CentOS 10                                                                                                                               |
|--------------|---------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|
| amd64        | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/tgagor/centos/stream9?label=centos%3Astream9%20size&arch=amd64)   | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/tgagor/centos/stream10?label=centos%3Astream10%20size&arch=amd64)   |
| arm64        | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/tgagor/centos/stream9?label=centos%3Astream9%20size&arch=arm64)   | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/tgagor/centos/stream10?label=centos%3Astream10%20size&arch=arm64)   |
| ppc64le      | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/tgagor/centos/stream9?label=centos%3Astream9%20size&arch=ppc64le) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/tgagor/centos/stream10?label=centos%3Astream10%20size&arch=ppc64le) |
| s390x        | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/tgagor/centos/stream9?label=centos%3Astream9%20size&arch=s390x)   | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/tgagor/centos/stream10?label=centos%3Astream10%20size&arch=s390x)   |

## Updates

CentOS Team stopped updating their base images on Docker hub.  They moved to [quay.io](https://quay.io/repository/centos/centos?tab=tags) now, but even there images for CentOS 7 and CentOS 8 are around half a year old. I decided to rebuild them weekly, installing all updates.

## Security
My mages are automatically scanned for security issues, actual results are available here: https://github.com/tgagor/docker-centos/security/advisories

## Images
You can fetch docker image from:
* [tgagor/centos](https://hub.docker.com/r/tgagor/centos)

## More info

https://timor.site/2021/07/official-centos-8-stream-docker-image-finally-available/
