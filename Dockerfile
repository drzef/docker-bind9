FROM drzef/s6base

MAINTAINER Dr Zef <drzef85@gmail.com>

COPY rootfs /
RUN apk add --no-cache bind

ENTRYPOINT ["/init"]
VOLUME /config
EXPOSE 53 53/udp 953
