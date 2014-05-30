FROM dock0/arch
MAINTAINER akerl <me@lesaker.org>

RUN pacman -Syu --noconfirm nsd
RUN nsd-control-setup
RUN cp /opt/dns/nsd.conf /etc/nsd/nsd.conf
ADD run /etc/sv/nsd/run
ADD src /opt/dns
RUN ln -s /etc/sv/nsd /service/
