SUBTARGET:=generic
BOARDNAME:=QTI IPQ56xx(64bit) based boards
CPU_TYPE:=cortex-a55

define Target/Description
	Build images for ipq56xx 64 bit system.
endef

DEFAULT_PACKAGES += \
	uboot-2025-ipq5610-mmc \
	uboot-2025-ipq5610-norplusmmc \
	uboot-2025-ipq5610-norplusnand \
	uboot-2025-ipq5610-nand
