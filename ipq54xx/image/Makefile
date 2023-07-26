include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

define Device/Default
	PROFILES := Default
	DTS_DIR := $(LINUX_DIR)/arch/$(LINUX_KARCH)/boot/dts/$(if $(CONFIG_TARGET_ipq54xx_generic),qcom)
	KERNEL_DEPENDS = $$(wildcard $(DTS_DIR)/$$(DEVICE_DTS).dts)
	KERNEL_LOADADDR := $(if $(CONFIG_TARGET_ipq54xx_generic),0x80000000,0x80008000)
	DEVICE_DTS = $$(SOC)-$(lastword $(subst _, ,$(1)))
	DEVICE_DTS_CONFIG := config-1
	IMAGES := sysupgrade.bin
	IMAGE/sysupgrade.bin = sysupgrade-tar | append-metadata
	IMAGE/sysupgrade.bin/squashfs :=
endef

define Device/FitImage
	KERNEL_SUFFIX := -fit-uImage.itb
	KERNEL = kernel-bin | gzip | fit gzip $$(DTS_DIR)/$$(DEVICE_DTS).dtb
	KERNEL_NAME := Image
endef

define Device/FitImageLzma
	KERNEL_SUFFIX := -fit-uImage.itb
	KERNEL = kernel-bin | lzma | fit lzma $$(DTS_DIR)/$$(DEVICE_DTS).dtb | CopyDebugInformation
	KERNEL_NAME := Image
endef

define Device/MultiDTBFitImage
	KERNEL_SUFFIX := -fit-uImage.itb
	KERNEL = kernel-bin | lzma | MultiDTBFIT
	DEVICE_DTS =
	KERNEL_INITRAMFS =
endef

include generic.mk

FindDeviceTrees ?= $(notdir $(basename $(shell find $(DTS_DIR)/ -name $(1)*.dtb $(2) 2>/dev/null)))

define Image/Build
	$(call Image/Build/$(1),$(1))
	dd if=$(KDIR)/root$(2).$(1) of=$(BIN_DIR)/$(IMG_PREFIX)-$(1)-root$(3).img bs=2k conv=sync
endef

define Build/CopyDebugInformation
	mkdir -p $(BIN_DIR)/debug/modules
	mkdir -p $(BIN_DIR)/dtbs
	$(CP) $(STAGING_DIR_ROOT)/lib/modules/$(LINUX_VERSION)/* $(BIN_DIR)/debug/modules/
	$(CP) $(KDIR)/vmlinux.debug $(BIN_DIR)/$(IMG_PREFIX)-vmlinux.elf
	$(CP) $(KDIR)/Image* $(BIN_DIR)/dtbs/
	$(CP) $(DTS_DIR)/devsoc-*.dtb $(BIN_DIR)/dtbs/
endef

$(eval $(call BuildImage))
