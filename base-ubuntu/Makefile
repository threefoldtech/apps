img=base

all: build

build: extract
	sudo cp startup.toml $(archive)/.startup.toml
	sudo cp readme.md $(archive)/.README.md

extract: docker
	sudo sh ../utils/extract-img.sh $(img) $(archive)

# build docker image with Dockerfile
docker: zinit
	echo "Home" $(HOME)
	docker build -t $(img) .

# zinit builds zinit from source
zinit:
	rustup target add x86_64-unknown-linux-musl
	cargo install --git https://github.com/threefoldtech/zinit --target=x86_64-unknown-linux-musl
	cp $(HOME)/.cargo/bin/zinit tmp
