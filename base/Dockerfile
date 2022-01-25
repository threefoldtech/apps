FROM alpine:latest

RUN apk add openssh-server && \
    wget -O /sbin/zinit https://github.com/threefoldtech/zinit/releases/download/v0.2.5/zinit && \
    chmod +x /sbin/zinit && \
    passwd -d root

COPY rootfs /

ENTRYPOINT [ "zinit", "init" ]
