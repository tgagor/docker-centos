ARG TAG=stream
FROM quay.io/centos/centos:$TAG
MAINTAINER TiMoR <https://timor.site>

# upgrade packages
RUN dnf upgrade --setopt=install_weak_deps=False -y && \
    dnf clean all && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/yum && \
    rm -rf /var/cache/dnf && \
    find /var/log -type f -name '*.log' -delete
