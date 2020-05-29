base:
	$(MAKE) -C base archive=$(archive)

prometheus:
	$(MAKE) -C prometheus archive=$(archive)

.PHONY: prometheus base
