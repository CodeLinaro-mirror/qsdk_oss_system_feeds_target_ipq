SUBTARGET:=generic
BOARDNAME:=QTI IPQ52xx(64bit) based boards
CPU_TYPE:=cortex-a53

define Target/Description
	Build images for ipq52xx 64 bit system.
endef

DEFAULT_PACKAGES += \
	uboot-2025-ipq5210-mmc \
	uboot-2025-ipq5210-norplusmmc \
	uboot-2025-ipq5210-norplusnand \
	uboot-2025-ipq5210-nand
