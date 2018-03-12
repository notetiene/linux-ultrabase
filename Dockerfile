ARG VERSION=latest
FROM notetiene/linux-base:$VERSION

MAINTAINER Etienne Prud’homme <e.e.f.prudhomme@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN echo 'APT::Get::Assume-Yes "true";' >> /etc/apt/apt.conf \
    && apt-get update && apt-get upgrade

RUN apt-get install \
    autoconf \
    automake \
    autotools-dev \
    libtool \
    libtool-bin \
    cmake \
    cmake-curses-gui \
    ninja-build \
    p7zip-full \
    p7zip-rar \
    valgrind

RUN apt-get install \
    texinfo \
    texinfo-doc-nonfree \
    info \
    man \
    manpages \
    ispell \
    aspell \
    hunspell

RUN apt-get install \
    git \
    bzr \
    cvs \
    subversion

RUN apt-get install \
    htop \
    multitail \
    tree \
    gnupg2 \
    gpm

RUN git clone https://github.com/universal-ctags/ctags.git
