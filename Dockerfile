FROM dock0/arch
MAINTAINER akerl <me@lesaker.org>
EXPOSE 53
RUN git clone git://github.com/akerl/dns /opt/dns
RUN pacman -Syu --noconfirm nsd
RUN nsd-control-setup
RUN cp /opt/dns/nsd.conf /etc/nsd/nsd.conf
ADD run /etc/sv/nsd/run
RUN ln -s /etc/sv/nsd /service/
