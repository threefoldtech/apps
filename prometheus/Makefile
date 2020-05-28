name=prometheus-2.18.1.linux-amd64
url=https://github.com/prometheus/prometheus/releases/download/v2.18.1/$(name).tar.gz
downloaded=/tmp/prometheus.tar.gz
# archive=/tmp/prometheus
base=/tmp/files/$(name)

all: pkg

$(downloaded):
	curl -L -o $(downloaded) https://github.com/prometheus/prometheus/releases/download/v2.18.1/$(name).tar.gz

files: $(downloaded)
	rm -rf /tmp/files
	mkdir -p /tmp/files
	tar -xf $(downloaded) -C /tmp/files

pkg: files
	rm -rf $(archive)
	mkdir -p $(archive)/bin
	mkdir -p $(archive)/data
	cp -r rootfs/* $(archive)

	cp $(base)/prometheus $(archive)/bin
	cp $(base)/promtool $(archive)/bin
	cp $(base)/tsdb $(archive)/bin
	cp $(base)/prometheus.yml $(archive)/etc/prometheus.yml

	mkdir -p $(archive)/etc/zinit

.PHONY: files
