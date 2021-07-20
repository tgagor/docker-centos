CentOS 8 Stream Docker image
============================

[![build](https://github.com/tgagor/docker-centos-stream/actions/workflows/build.yml/badge.svg?branch=master)](https://github.com/tgagor/docker-centos-stream/actions/workflows/build.yml)

## Update

I finally found where the legit CentOS base image are now landing. I found it by accident when I was reading this article: https://blog.centos.org/2021/07/centos-community-newsletter-july-2021/

I later checked on project's IRC channel and "one guy" confirmed, that project moved to quay.io when Docker introduced limits on registry service.

It's not adding more confidence on my side to the CentOS project, when they're not even communicating such changes publicly, sick!

You can fetch docker image from:
* [tgagor/centos-stream](https://hub.docker.com/repository/docker/tgagor/centos-stream)
* ghcr.io/tgagor/centos-stream

More info: https://timor.site/2021/02/centos-8-stream-docker-image/
