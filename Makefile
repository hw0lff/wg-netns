CONFIG_DIR = /etc
SHELL=/bin/bash

install:
	@echo You must be root to install
	mkdir $(CONFIG_DIR)/wg-netns
	cp wg-netns.py /usr/bin/wg-netns
	chmod 0755 /usr/bin/wg-netns
	cp wg-netns@.service /usr/lib/systemd/system/wg-netns@.service

uninstall:
	rm /usr/bin/wg-netns
	rm /usr/lib/systemd/system/wg-netns@.service
	@echo Your config is untouched