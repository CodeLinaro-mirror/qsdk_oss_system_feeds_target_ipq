
define Device/qcom_hmxx
        $(call Device/MultiDTBFitImage)
        DEVICE_VENDOR := Qualcomm Technologies, Inc.
        DEVICE_MODEL := AP-HMXX
        DEVICE_VARIANT :=
        BOARD_NAME := ap-hmxx
        SOC := ipq5200
        KERNEL_INSTALL := 1
        KERNEL_SIZE := $(if $(CONFIG_DEBUG),9216k,6500k)
        IMAGE_SIZE := 25344k
        IMAGE/sysupgrade.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-rootfs | pad-rootfs | append-metadata
endef
TARGET_DEVICES += qcom_hmxx

define Device/emulation
	$(call Device/FitImageLzma)
	DEVICE_VENDOR := Qualcomm Technologies, Inc.
	DEVICE_MODEL :=
	DEVICE_VARIANT :=
	BOARD_NAME :=
	BUILD_DTS_ipq5200-emulation := 1
	SOC := ipq5200
	KERNEL_INSTALL := 1
	KERNEL_SIZE := $(if $(CONFIG_DEBUG),8680k,6500k)
	IMAGE_SIZE := 25344k
	IMAGE/sysupgrade.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-rootfs | pad-rootfs | append-metadata
endef
