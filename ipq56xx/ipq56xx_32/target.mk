ARCH:=arm
SUBTARGET:=ipq56xx_32
BOARDNAME:=QTI IPQ56xx(32bit) based boards
CPU_TYPE:=cortex-a55

define Target/Description
	Build firmware image for ipq56xx SoC devices.
endef

DEFAULT_PACKAGES += \
	uboot-2025-ipq5610-mmc32 \
	uboot-2025-ipq5610-norplusmmc32 \
	uboot-2025-ipq5610-nand32 \
	uboot-2025-ipq5610-norplusnand32 \
	uboot-2025-ipq5610-tiny_nand32 \
	uboot-2025-ipq5610-tiny_norplusnand32
