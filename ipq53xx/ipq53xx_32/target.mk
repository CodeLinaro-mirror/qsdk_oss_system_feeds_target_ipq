
ARCH:=arm
SUBTARGET:=ipq53xx_32
BOARDNAME:=QTI IPQ53xx(32bit) based boards
CPU_TYPE:=cortex-a7

define Target/Description
	Build firmware image for IPQ53xx SoC devices.
endef

DEFAULT_PACKAGES += \
	uboot-2016-ipq5332 \
	uboot-2016-ipq5332-debug \
	uboot-ipq5332-mmc32 \
	uboot-ipq5332-norplusmmc32 \
	uboot-ipq5332-norplusnand32 \
	uboot-ipq5332-nand32 \
	sysupgrade-helper \
	uboot-2016-ipq5332_tiny \
	uboot-2016-ipq5332_tiny2 \
	uboot-2016-ipq5332_tiny_nor \
	uboot-ipq5332-tiny_nand32 \
	uboot-ipq5332-tiny_nor32 \
	uboot-ipq5332-tiny_v2_nand32 \
	uboot-ipq5332-tiny_norplusnand32 \
	uboot-ipq5332-tiny_v2_norplusnand32
