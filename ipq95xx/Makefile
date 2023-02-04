include $(TOPDIR)/rules.mk

ARCH:=aarch64
BOARD:=ipq95xx
BOARDNAME:=Qualcomm Technologies, Inc. IPQ95XX
FEATURES:=squashfs fpu ramdisk nand pcie
CPU_TYPE:=cortex-a73
CPU_SUBTYPE:=neon-vfpv4
SUBTARGETS:=generic

KERNEL_PATCHVER:=6.1

KERNELNAME:=Image dtbs

include $(INCLUDE_DIR)/target.mk
DEFAULT_PACKAGES += \
	uboot-envtools

$(eval $(call BuildTarget))
