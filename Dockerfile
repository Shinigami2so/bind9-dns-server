FROM ubuntu

RUN apt-get update
RUN apt-get install -y \
	bind9 \
	bind9utils \
	bind9-doc \
	nano
RUN mkdir -p /etc/bind/zones
COPY resources/db.* /etc/bind/zones/
COPY resources/named.conf.* /etc/bind/
RUN chown -R root:bind /etc/bind
RUN chmod -R 775 /etc/bind
COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh
EXPOSE 53/udp 53/tcp
ENTRYPOINT ["/sbin/entrypoint.sh"]
