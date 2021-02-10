tgagor/centos-stream
====================

We're all divided with Red Hat's decision to change CentOS into rolling distro. As I'm not sure how to progress with it and there are no Docker base images with Stream variant, I created them based on official instruction: https://www.centos.org/centos-stream/


You can fetch docker image from:
* [tgagor/centos-stream](https://hub.docker.com/repository/docker/tgagor/centos-stream)
* ghcr.io/tgagor/centos-stream
    * ghcr.io/tgagor/centos-stream:squashed

Squashing image for smaller size
--------------------------------

By switching repositories and upgrading all packages we receive pretty big image - around twice as big as base `centos:8`. It can be squashed by exporting and importing like that:

```
docker run --name tgagor-centos-stream tgagor/centos-stream true
docker export tgagor-centos-stream | docker import - tgagor/centos-stream:squashed
docker rm tgagor-centos-stream
```

Result is pretty impressive:
```
REPOSITORY             TAG        SIZE
centos                 8          209MB
tgagor/centos-stream   latest     455MB
tgagor/centos-stream   squashed   297MB
```
