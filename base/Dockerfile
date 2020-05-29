FROM alpine:latest

RUN apk add dropbear
RUN mkdir /etc/dropbear
COPY rootfs /
ADD tmp/zinit /sbin/zinit

ENTRYPOINT [ "zinit", "init" ]
