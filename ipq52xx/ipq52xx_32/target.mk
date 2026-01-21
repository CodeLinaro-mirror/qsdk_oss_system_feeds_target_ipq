ARCH:=arm
SUBTARGET:=ipq52xx_32
BOARDNAME:=QTI IPQ52xx(32bit) based boards
CPU_TYPE:=cortex-a7

define Target/Description
	Build firmware image for IPQ52xx SoC devices.
endef

DEFAULT_PACKAGES += \
	uboot-2025-ipq5210-mmc32 \
	uboot-2025-ipq5210-norplusmmc32 \
	uboot-2025-ipq5210-nand32 \
	uboot-2025-ipq5210-norplusnand32
