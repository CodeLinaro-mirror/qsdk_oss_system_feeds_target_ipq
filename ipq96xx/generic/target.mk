SUBTARGET:=generic
BOARDNAME:=QTI IPQ96xx(64bit) based boards
CPU_TYPE:=cortex-a55

define Target/Description
	Build images for ipq96xx 64 bit system.
endef

DEFAULT_PACKAGES += \
	uboot-2025-ipq9650-mmc \
	uboot-2025-ipq9650-norplusmmc \
	uboot-2025-ipq9650-norplusnand \
	uboot-2025-ipq9650-nand \
	uboot-2025-ipq9650-debug-mmc \
	uboot-2025-ipq9650-debug-norplusmmc \
	uboot-2025-ipq9650-debug-norplusnand \
	uboot-2025-ipq9650-debug-nand
