define Device/qcom_jhxx
	$(call Device/MultiDTBFitImage)
	DEVICE_VENDOR := Qualcomm Technologies, Inc.
	DEVICE_MODEL := AP-JHXX
	DEVICE_VARIANT :=
	BOARD_NAME := ap-jhxx
	SOC := ipq9650
	KERNEL_INSTALL := 1
	KERNEL_SIZE := $(if $(CONFIG_DEBUG),9216k,6500k)
	IMAGE_SIZE := 25344k
	IMAGE/sysupgrade.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-rootfs | pad-rootfs | append-metadata
endef

define Device/ipq9650-fitimage-base
	$(call Device/FitImageLzma)
	DEVICE_VENDOR := Qualcomm Technologies, Inc.
	SOC := ipq9650
	KERNEL_INSTALL := 1
	KERNEL_SIZE := $(if $(CONFIG_DEBUG),8680k,6500k)
	IMAGE_SIZE := 25344k
	IMAGE/sysupgrade.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-rootfs | pad-rootfs | append-metadata
endef

define Device/emulation
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL :=
	DEVICE_VARIANT :=
	BOARD_NAME :=
	BUILD_DTS_ipq9650-emulation := 1
endef

define Device/qcom_db-ju01
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL := DB-JU01
	BOARD_NAME := db-ju01
	BUILD_DTS_ipq9650-db-ju01 := 1
endef
TARGET_DEVICES += qcom_db-ju01

define Device/qcom_db-ju01-c1
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL := DB-JU01-C1
	BOARD_NAME := db-ju01-c1
	BUILD_DTS_ipq9650-db-ju01-c1 := 1
endef
TARGET_DEVICES += qcom_db-ju01-c1

define Device/qcom_db-ju01-c2
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL := DB-JU01-C2
	BOARD_NAME := db-ju01-c2
	BUILD_DTS_ipq9650-db-ju01-c2 := 1
endef
TARGET_DEVICES += qcom_db-ju01-c2

define Device/qcom_db-ju02
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL := DB-JU02
	BOARD_NAME := db-ju02
	BUILD_DTS_ipq9650-db-ju02 := 1
endef
TARGET_DEVICES += qcom_db-ju02

define Device/qcom_tb-ju01.1
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL := TB-JU01.1
	BOARD_NAME := tb-ju01.1
	BUILD_DTS_ipq9650-tb-ju01.1 := 1
endef
TARGET_DEVICES += qcom_tb-ju01.1

define Device/qcom_rdp488
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL := RDP488
	BOARD_NAME := ap-rdp488
	BUILD_DTS_ipq9650-rdp488 := 1
endef
TARGET_DEVICES += qcom_rdp488

define Device/qcom_rdp488-c2
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL := RDP488
	DEVICE_VARIANT := C2
	BOARD_NAME := ap-rdp488-c2
	BUILD_DTS_ipq9650-rdp488-c2 := 1
endef
TARGET_DEVICES += qcom_rdp488-c2

define Device/qcom_rdp489
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL := RDP489
	BOARD_NAME := ap-rdp489
	BUILD_DTS_ipq9650-rdp489 := 1
endef
TARGET_DEVICES += qcom_rdp489

define Device/qcom_rdp506
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL := RDP506
	BOARD_NAME := ap-rdp506
	BUILD_DTS_ipq9650-rdp506 := 1
endef
TARGET_DEVICES += qcom_rdp506

define Device/qcom_rdp490
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL := RDP490
	BOARD_NAME := ap-rdp490
	BUILD_DTS_ipq9650-rdp490 := 1
endef
TARGET_DEVICES += qcom_rdp490

define Device/qcom_rdp491
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL := RDP491
	BOARD_NAME := ap-rdp491
	BUILD_DTS_ipq9650-rdp491 := 1
endef
TARGET_DEVICES += qcom_rdp491

define Device/qcom_rdp507
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL := RDP507
	BOARD_NAME := ap-rdp507
	BUILD_DTS_ipq9650-rdp507 := 1
endef
TARGET_DEVICES += qcom_rdp507

define Device/qcom_rdp529
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL := RDP529
	BOARD_NAME := ap-rdp529
	BUILD_DTS_ipq9650-rdp529 := 1
endef
TARGET_DEVICES += qcom_rdp529

define Device/qcom_rdp530
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL := RDP530
	BOARD_NAME := ap-rdp530
	BUILD_DTS_ipq9650-rdp530 := 1
endef
TARGET_DEVICES += qcom_rdp530

define Device/qcom_rdp532
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL := RDP532
	BOARD_NAME := ap-rdp532
	BUILD_DTS_ipq9650-rdp532 := 1
endef
TARGET_DEVICES += qcom_rdp532

define Device/qcom_emulation-fbc
	$(call Device/ipq9650-fitimage-base)
	DEVICE_MODEL :=
	DEVICE_VARIANT :=
	DEVICE_DTS := ipq9650-emulation-fbc
	BUILD_DTS_ipq9650-emulation-fbc := 1
endef
TARGET_DEVICES += qcom_emulation-fbc
