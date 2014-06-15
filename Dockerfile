FROM dock0/arch
MAINTAINER akerl <me@lesaker.org>

RUN pacman -Syu --noconfirm nsd
ADD run /etc/sv/nsd/run
ADD src /opt/dns
RUN ln -s /etc/sv/nsd /service/
