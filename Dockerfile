FROM dock0/service
MAINTAINER akerl <me@lesaker.org>
EXPOSE 53
RUN pacman -Syu --noconfirm nsd
ADD run /service/nsd/run
ADD src /opt/dns
