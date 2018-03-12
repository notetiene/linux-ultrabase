ARG VERSION=latest
FROM notetiene/linux-base:$VERSION

MAINTAINER Etienne Prud’homme <e.e.f.prudhomme@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN echo 'APT::Get::Assume-Yes "true";' >> /etc/apt/apt.conf \
    && apt-get update && apt-get upgrade

RUN apt-get install \
    aptitude \
    texinfo-doc-nonfree \
    info \
    aspell \
    unrar \
    traceroute \
    iputils-ping \
    iputils-arping \
    psmisc \
    gnupg2 \
    whois \
    dnsutils \
    cron \
    sl
