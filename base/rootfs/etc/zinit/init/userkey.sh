#!/bin/sh

if [ -n "${SSH_KEY}" ]
then
    mkdir -p "${HOME}/.ssh"
    keys="${HOME}/.ssh/authorized_keys"
    grep "$SSH_KEY" ${keys} || echo ${SSH_KEY} >> $keys
fi
