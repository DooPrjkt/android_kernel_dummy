# Dummy Makefile — satisfies vendor/lineage soong kernel header generator
# by copying prebuilt UAPI headers instead of running real kbuild.

PWD := $(shell pwd)
SRC := $(PWD)/../../../device/advan/X1-kernel/kernel-headers

headers_install:
	@mkdir -p $(INSTALL_HDR_PATH)/usr/include
	@cp -r $(SRC)/usr/include/. $(INSTALL_HDR_PATH)/usr/include/ 2>/dev/null || true
	@cp -r $(SRC)/include/uapi/. $(INSTALL_HDR_PATH)/usr/include/ 2>/dev/null || true

.PHONY: headers_install
