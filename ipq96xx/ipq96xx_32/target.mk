
ARCH:=arm
SUBTARGET:=ipq96xx_32
BOARDNAME:=QTI IPQ96xx(32bit) based boards
CPU_TYPE:=cortex-a7

define Target/Description
	Build firmware image for IPQ96xx SoC devices.
endef

DEFAULT_PACKAGES += \
        uboot-2025-ipq9650-mmc32 \
        uboot-2025-ipq9650-norplusmmc32 \
        uboot-2025-ipq9650-nand32 \
        uboot-2025-ipq9650-norplusnand32
