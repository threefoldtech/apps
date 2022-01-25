img=base

all: build

build: extract
	sudo cp startup.toml $(archive)/.startup.toml
	sudo cp readme.md $(archive)/.README.md

extract: docker
	sudo sh ../utils/extract-img.sh $(img) $(archive)

# build docker image with Dockerfile
docker:
	echo "Home" $(HOME)
	docker build -t $(img) .
