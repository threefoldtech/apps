> If you don't know what zos, or flist are either check [threefold](http://threefold.io/) or move away.

# Some automated flist builders
This repo has workflows to auto build some flists.

# The base image
Base image provide the basic image, runs zinit and start `dropbear` by default. For more information please check [here](base/readme.md)

## Idea
the base image is an alpine base image with zinit and sshd pre configured. One started by itself you get ssh out of the box and capabilities of zinit as a process manager. The other builders (in this repo or different repos) can use this as a base image to add their own services.

# Other flist
## Prometheus
Prometheus extends the base image by adding prometheus plus the required zinit unit file to auto start it.
