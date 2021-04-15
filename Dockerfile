FROM centos:7

LABEL maintainer="Felix Barsnick"
USER root

ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

RUN INSTALL_PKGS="bc gettext git rsync tar unzip which zip bzip2 jq wget curl patch" && \
    ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
    yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
    yum clean all && \
    useradd -u 1001 -g users -N gitlab-ci

##### end baseimage #####

#...
