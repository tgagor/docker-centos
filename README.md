CentOS 8 Stream Docker image
============================

We're all divided with recent decision on changing CentOS into rolling distro. As there are no official Docker images with Stream variant, I created them on my own, based on [official instruction](https://www.centos.org/centos-stream/). Now at least I can try it and decide on my own if it's stable enough for production workloads.

You can fetch docker image from:
* [tgagor/centos-stream](https://hub.docker.com/repository/docker/tgagor/centos-stream)
* ghcr.io/tgagor/centos-stream


Squashing image for smaller size
--------------------------------

By switching repositories and upgrading all packages we receive pretty big image - around twice as big as base `centos:8`. It can be squashed by exporting and importing like that:

```
docker run --name tgagor-centos-stream tgagor/centos-stream true
docker export tgagor-centos-stream | docker import - tgagor/centos-stream:squashed
docker rm tgagor-centos-stream
```

This way, instead of having two layers:
* original `centos:8`
* and after the switch + all upgrades
we will have just one layer - final CentOS 8 Stream.

Result is pretty impressive:
```
REPOSITORY             TAG        SIZE
centos                 8          209MB
tgagor/centos-stream   latest     455MB
tgagor/centos-stream   squashed   297MB
```

I used [hooks](https://docs.docker.com/docker-hub/builds/advanced/) to customize build phaze in Docker Hub, thanks to that you will fetch image which is already squashed ;)
