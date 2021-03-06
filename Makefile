MODULE_VERSION ?= 4.4
DKMS_DIR := /usr/src/bcache-$(MODULE_VERSION)
DKMS_KEY := -m bcache -v $(MODULE_VERSION)

install:
	cp -r src $(DKMS_DIR)
	dkms add $(DKMS_KEY)
	dkms build $(DKMS_KEY)
	dkms install $(DKMS_KEY)

uninstall:
	dkms remove --all $(DKMS_KEY)
	rm -rf $(DKMS_DIR)
