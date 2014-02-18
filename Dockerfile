FROM akerl/arch
MAINTAINER akerl
EXPOSE 53
ADD dns /opt/dns
RUN pacman -S --noconfirm nsd
RUN nsd-control-setup
CMD ["/usr/bin/nsd", "-d", "-c", "/opt/dns/nsd.conf"]
