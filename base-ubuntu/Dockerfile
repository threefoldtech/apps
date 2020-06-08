FROM ubuntu:latest

RUN apk-get udpate
RUN apt-get install dropbear-bin
RUN rm -rf /var/cache/apt
RUN apt-get clean

RUN mkdir /etc/dropbear
COPY rootfs /
ADD tmp/zinit /sbin/zinit

ENTRYPOINT [ "zinit", "init" ]
