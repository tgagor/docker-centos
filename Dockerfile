FROM centos:8
MAINTAINER tgagor, https://github.com/tgagor

# switch to CentOS 8 Stream repos and upgrade packages
RUN dnf install -y centos-release-stream && \
    dnf swap -y centos-{linux,stream}-repos && \
    dnf distro-sync -y && \
    grep -i stream /etc/centos-release && \
    yum upgrade -y
