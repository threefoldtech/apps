# Base Image
The base image is an alpine image (musl) that also uses zinit as PID 1. The image starts `dropbear` by default.

## Env
The image handles the following environment variables
- `SSH_KEY` this key is added to the root `authorized_keys`. It must be a valid public key that is supported by `dropbear` (for example `rsa`)

## Entrypoint
The base image will start `zinit` by default if no `entrypoint` is provided in the container reservation.
