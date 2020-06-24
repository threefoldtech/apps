base:
	$(MAKE) -C base archive=$(archive)

base-ubuntu:
	$(MAKE) -C base-ubuntu archive=$(archive)

prometheus:
	$(MAKE) -C prometheus archive=$(archive)

.PHONY: prometheus base base-ubuntu
