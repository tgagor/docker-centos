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
```

Result is pretty impressive:
```
REPOSITORY             TAG        IMAGE ID       CREATED              SIZE
centos                 8          300e315adb2f   2 months ago         209MB
tgagor/centos-stream   squashed   bf1ce7e28afa   23 seconds ago       346MB
tgagor/centos-stream   latest     0acaa47455a2   About a minute ago   514MB
```
