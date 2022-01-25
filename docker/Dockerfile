FROM alpine:latest

RUN apk add openssh-server && \
    apk add docker && \
    apk add ip6tables && \
    wget -O /sbin/zinit https://github.com/threefoldtech/zinit/releases/download/v0.2.5/zinit && \
    chmod +x /sbin/zinit && \
    wget -O /bin/fuse-overlayfs https://github.com/containers/fuse-overlayfs/releases/download/v1.8.1/fuse-overlayfs-x86_64 && \
    chmod +x /bin/fuse-overlayfs && \
    passwd -d root

COPY rootfs /

ENTRYPOINT [ "zinit", "init" ]
