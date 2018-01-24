FROM ubuntu:14.04
MAINTAINER Kamil Wcisło <kamil.wcislo@el-arkam.pl>


RUN apt-get update && apt-get install -y \
    build-essential \
    bsdmainutils \
    gawk \
    git \
    subversion \
    python \
    m4 \
    flex \
    bison \
    gdb \
    doxygen \
    ncurses-dev \
    cmake \
    make \
    g++ \
    wget \
    liblzma-dev \
    zlib1g-dev \
    libssl-dev \
    unzip \
    intltool \
    xsltproc \
    && \
    apt-get clean && \
    useradd -m builder && \
    mkdir -p /home/builder/ && \
    echo 'builder ALL=NOPASSWD: ALL' > /etc/sudoers.d/builder


USER builder
WORKDIR /home/builder/
