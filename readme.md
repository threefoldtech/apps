> If you don't know what zos, or flist are either check [threefold](http://threefold.io/) or move away.

# Some automated flist builders
This repo has workflows to auto build some flists.

# The base image
The base image actually uses docker file to build, then its up to you to push it docker hub, and then import it to hub.grid.tf. The reason it's not automated is that the publis-flist action plugin does not support importing from hub.docker atm. The can be changed later once it's possible.

## Idea
the base image is an alpine base image with zinit and sshd pre configured. One started by itself you get ssh out of the box and capabilities of zinit as a process manager. The other builders (in this repo or different repos) can use this as a base image to add their own services.

# Other flist
## Prometheus
Prometheus extends the base image by adding prometheus plus the required zinit unit file to auto start it.
