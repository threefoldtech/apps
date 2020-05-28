#!/bin/sh

mkdir -p /etc/ssh/

rsa_key=/etc/ssh/ssh_host_rsa_key
dsa_key=/etc/ssh/ssh_host_dsa_key

if [ ! -f "${rsa_key}" ]
then
    ssh-keygen -f "${rsa_key}" -N '' -t rsa
fi

if [ ! -f "${dsa_key}" ]
then
    ssh-keygen -f "${dsa_key}" -N '' -t dsa
fi
