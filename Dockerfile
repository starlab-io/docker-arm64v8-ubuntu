FROM arm64v8/ubuntu:eoan

COPY qemu-aarch64-static /usr/bin/qemu-aarch64-static

LABEL maintainer="Greg Pearson<greg.pearson@starlab.io>"

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install \
    git \
    check \
    check-devel \
    vim-common && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*
