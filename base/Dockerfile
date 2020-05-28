FROM alpine:latest

RUN apk add openssh
COPY rootfs /
ADD tmp/zinit /sbin/zinit

ENTRYPOINT [ "zinit", "init" ]
