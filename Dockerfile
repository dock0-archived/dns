FROM dock0/arch:f4c0d1f00e86
MAINTAINER akerl <me@lesaker.org>
EXPOSE 53
RUN git clone git://github.com/akerl/dns /opt/dns
RUN pacman -Syu --noconfirm nsd
RUN nsd-control-setup
RUN cp /opt/dns/nsd.conf /etc/nsd/nsd.conf
ADD run /etc/sv/nsd/run
RUN ln -s /etc/sv/nsd /service/
