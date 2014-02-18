FROM akerl/arch
MAINTAINER akerl
EXPOSE 53
RUN git clone git://github.com/akerl/dns.git /opt/dns
RUN pacman -S --noconfirm nsd
RUN nsd-control-setup
CMD ["/usr/bin/nsd", "-d", "-c", "/opt/dns/nsd.conf"]
