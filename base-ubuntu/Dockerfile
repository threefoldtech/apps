FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y dropbear-bin
RUN rm -rf /var/cache/apt
RUN apt-get clean

RUN mkdir /etc/dropbear
COPY rootfs /
ADD tmp/zinit /sbin/zinit

ENTRYPOINT [ "zinit", "init" ]
