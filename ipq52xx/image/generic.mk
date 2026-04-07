define Device/qcom_hmxx
	$(call Device/MultiDTBFitImage)
	DEVICE_VENDOR := Qualcomm Technologies, Inc.
	DEVICE_MODEL := AP-HMXX
	DEVICE_VARIANT :=
	BOARD_NAME := ap-hmxx
	SOC := ipq5210
	KERNEL_INSTALL := 1
	KERNEL_SIZE := $(if $(CONFIG_DEBUG),9216k,6500k)
	IMAGE_SIZE := 25344k
	IMAGE/sysupgrade.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-rootfs | pad-rootfs | append-metadata
endef

define Device/ipq5210-fitimage-base
	$(call Device/FitImageLzma)
	DEVICE_VENDOR := Qualcomm Technologies, Inc.
	SOC := ipq5210
	KERNEL_INSTALL := 1
	KERNEL_SIZE := $(if $(CONFIG_DEBUG),8680k,6500k)
	IMAGE_SIZE := 25344k
	IMAGE/sysupgrade.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-rootfs | pad-rootfs | append-metadata
endef

define Device/qcom_rdp497
	$(call Device/ipq5210-fitimage-base)
	DEVICE_MODEL := RDP497
	BOARD_NAME := ap-rdp497
	BUILD_DTS_ipq5210-rdp497 := 1
endef
TARGET_DEVICES += qcom_rdp497

define Device/qcom_rdp498
	$(call Device/ipq5210-fitimage-base)
	DEVICE_MODEL := RDP498
	BOARD_NAME := ap-rdp498
	BUILD_DTS_ipq5210-rdp498 := 1
endef
TARGET_DEVICES += qcom_rdp498

define Device/qcom_db-hm01.1
	$(call Device/ipq5210-fitimage-base)
	DEVICE_MODEL := DB-HM01.1
	BOARD_NAME := db-hm01.1
	BUILD_DTS_ipq5210-db-hm01.1 := 1
endef
TARGET_DEVICES += qcom_db-hm01.1

define Device/qcom_db-hm02.1
	$(call Device/ipq5210-fitimage-base)
	DEVICE_MODEL := DB-HM02.1
	BOARD_NAME := db-hm02.1
	BUILD_DTS_ipq5210-db-hm02.1 := 1
endef
TARGET_DEVICES += qcom_db-hm02.1

define Device/qcom_rdp499
	$(call Device/ipq5210-fitimage-base)
	DEVICE_MODEL := RDP499
	BOARD_NAME := ap-rdp499
	BUILD_DTS_ipq5210-rdp499 := 1
endef
TARGET_DEVICES += qcom_rdp499

define Device/qcom_rdp500
	$(call Device/ipq5210-fitimage-base)
	DEVICE_MODEL := RDP500
	BOARD_NAME := ap-rdp500
	BUILD_DTS_ipq5210-rdp500 := 1
endef
TARGET_DEVICES += qcom_rdp500

define Device/qcom_rdp501
	$(call Device/ipq5210-fitimage-base)
	DEVICE_MODEL := RDP501
	BOARD_NAME := ap-rdp501
	BUILD_DTS_ipq5210-rdp501 := 1
endef
TARGET_DEVICES += qcom_rdp501

define Device/qcom_rdp502
	$(call Device/ipq5210-fitimage-base)
	DEVICE_MODEL := RDP502
	BOARD_NAME := ap-rdp502
	BUILD_DTS_ipq5210-rdp502 := 1
endef
TARGET_DEVICES += qcom_rdp502

define Device/qcom_rdp503
	$(call Device/ipq5210-fitimage-base)
	DEVICE_MODEL := RDP503
	BOARD_NAME := ap-rdp503
	BUILD_DTS_ipq5210-rdp503 := 1
endef
TARGET_DEVICES += qcom_rdp503

define Device/qcom_rdp504
	$(call Device/ipq5210-fitimage-base)
	DEVICE_MODEL := RDP504
	BOARD_NAME := ap-rdp504
	BUILD_DTS_ipq5210-rdp504 := 1
endef
TARGET_DEVICES += qcom_rdp504

define Device/qcom_rdp505
	$(call Device/ipq5210-fitimage-base)
	DEVICE_MODEL := RDP505
	BOARD_NAME := ap-rdp505
	BUILD_DTS_ipq5210-rdp505 := 1
endef
TARGET_DEVICES += qcom_rdp505

define Device/qcom_rdp511
	$(call Device/ipq5210-fitimage-base)
	DEVICE_MODEL := RDP511
	BOARD_NAME := ap-rdp511
	BUILD_DTS_ipq5210-rdp511 := 1
endef
TARGET_DEVICES += qcom_rdp511

define Device/qcom_rdp512
	$(call Device/ipq5210-fitimage-base)
	DEVICE_MODEL := RDP512
	BOARD_NAME := ap-rdp512
	BUILD_DTS_ipq5210-rdp512 := 1
endef
TARGET_DEVICES += qcom_rdp512

define Device/emulation
	$(call Device/ipq5210-fitimage-base)
	DEVICE_MODEL :=
	DEVICE_VARIANT :=
	BOARD_NAME :=
	BUILD_DTS_ipq5210-emulation := 1
endef

define Device/qcom_emulation-fbc
	$(call Device/ipq5210-fitimage-base)
	DEVICE_MODEL :=
	DEVICE_VARIANT :=
	DEVICE_DTS := ipq5210-emulation-fbc
	BUILD_DTS_ipq5210-emulation-fbc := 1
endef
TARGET_DEVICES += qcom_emulation-fbc
