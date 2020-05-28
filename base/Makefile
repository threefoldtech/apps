docker: zinit
	echo "Home" $(HOME)
	docker build -t jumpscale/base .

zinit:
	rustup target  add x86_64-unknown-linux-musl
	cargo install --git https://github.com/threefoldtech/zinit --target=x86_64-unknown-linux-musl
	cp $(HOME)/.cargo/bin/zinit tmp
