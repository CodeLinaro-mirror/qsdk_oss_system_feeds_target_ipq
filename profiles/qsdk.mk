#The NSS packages are included by the networking.mk file from the below path.
NETWORKING_MK := $(wildcard $(TOPDIR)/qca/feeds/nss/profiles/networking.mk)
include $(NETWORKING_MK)

DEFAULT_PACKAGES += -dnsmasq

ERP:=kmod-rsrcmgr-netstandby-drv

HW_CRYPTO:= kmod-crypto-qcrypto

WIFI_OPEN_PKGS:= kmod-ath12k kmod-ath11k wpad-mesh hostapd-utils \
	control-app-open sigma-dut-open wpa-cli qca-wifi-scripts cnssdiag myftm kmod-telemetry-agent \
	athtestcmd-lith-nl udtool qca-cfg80211tool wifitelemetry qca-acfg \
	qca-rptr-mgr
#	sigma-dut-open wpa-cli qcmbr-netlink iwinfo \
#	athtestcmd athtestcmd-lith-nl -libhyficommon qca-wifi-scripts -kmod-telemetry-agent

WIFI_OPEN_PKGS_8M:= kmod-ath11k wpad-mesh hostapd-utils \
	wpa-cli libhyficommon \
	wififw_mount_script

WIFI_PKGS:=kmod-qca-wifi-unified-profile \
	qca-hostap qca-hostapd-cli qca-hapd-supp qca-wpa-supplicant \
	qca-wpa-cli qca-cfg80211tool qca-wifi-scripts \
	qca-acfg qca-wrapd athtestcmd-lith myftm qca-iface-mgr \
	qca-wapid qca-lowi athdiag \
	qca-spectral qca-icm sigma-dut qca-hapd-supp-wapi

WIFI_PKGS_MINENT:=kmod-qca-wifi-custc-profile \
	qca-hostap qca-hostapd-cli qca-hapd-supp qca-wpa-supplicant qca-wifi-scripts \
	qca-wpa-cli qca-spectral sigma-dut \
	qca-wrapd qca-wapid qca-acfg \
	qca-lowi qca-icm qca-cfg80211 athdiag qca-cnss-daemon \
	athtestcmd-lith qca-cfg80211tool myftm

WIFI_PKGS_256MB:=kmod-qca-wifi-lowmem-profile \
	qca-hostap qca-hostapd-cli qca-hapd-supp qca-wpa-supplicant \
	qca-wpa-cli qca-cfg80211tool qca-wifi-scripts \
	sigma-dut qca-wrapd qca-wapid qca-acfg \
	qca-iface-mgr qca-icm qca-cfg80211 athdiag qca-cnss-daemon \
	athtestcmd-lith myftm

WIFI_PKGS_16M:=kmod-qca-wifi-flash_16mb-profile \
	qca-hostap qca-hostapd-cli qca-wpa-supplicant \
	qca-wpa-cli qca-cfg80211 qca-cfg80211tool qca-wifi-scripts

WIFI_FW_PKGS:=qca-wifi-wkk-fw-hw1-asic

OPENWRT_STANDARD:= luci lua openssl-util

OPENWRT_BASIC:= wifi-scripts

OPENWRT_256MB:= pm-utils wififw_mount_script qca-thermald qti-license-pfm

STORAGE:=kmod-scsi-core kmod-usb-storage kmod-usb-uas kmod-nls-cp437 kmod-nls-iso8859-1 \
	kmod-fs-msdos kmod-fs-vfat kmod-fs-ntfs ntfs-3g e2fsprogs losetup

USB_ETHERNET:= kmod-usb-net-rtl8152 kmod-usb-net

TEST_TOOLS:=ethtool i2c-tools tcpdump

UTILS:=file luci-app-samba4 rng-tools profilerd

COREBSP_UTILS:=pm-utils wififw_mount_script qca-thermald qca-qmi-framework \
	qca-wlanfw-upgrade qti-license-pfm dashboard qti-softsku-license-loader-libs llcc-perfmon-scripts \
	kmod-updtest_mod

FAILSAFE:= kmod-bootconfig

BLUETOOTH:=kmod-bluetooth bluez-libs bluez-utils kmod-ath3k

BLUETOPIA:=bluetopia

ZIGBEE:=zigbee_efr32

AUDIO:=kmod-sound-soc-ipq alsa

KPI:=sysstat

CNSS_DIAG:=cnssdiag

CTRL_APP_DUT:=ctrl_app_dut

FTM:=ftm diag

QMSCT_CLIENT:=qmsct_client

MINIDUMP:= minidump

QMI_SAMPLE_APP:=kmod-qmi_sample_client

DIAG:= common-headers diag

OPENSYNC:=kmod-gre6 strace libzmq-curve mosquitto-ssl libwolfssl protobuf pping kmod-ipt-skipaccel iptables-mod-skipaccel \
	  curl iperf3 -htpdate htpdate-old 6relayd libev libip4tc libip6tc mxml libprotobuf-c blkid miniupnpd-iptables openvswitch opensync kmod-qcom-sec opensync-scripts \
	  kmod-qseecom ndisc6 rdisc6 rdnssd traceroute6 ip6tables-mod-nat libsodium ebtables ebtables-utils kmod-ebtables kmod-ebtables-ipv4 \
	  kmod-ebtables-ipv6 kmod-ebtables-watchers libfdt kmod-dummy memtester tinyproxy iptables-mod-tproxy ip6tables-zz-legacy \
	  iptables-zz-legacy iptables-mod-nflog iptables-mod-nfqueue miniupnpd-iptables ebtables-legacy ebtables-legacy-utils libnghttp2 libcares libiperf3 coreutils coreutils-sleep libatomic \
	  openvswitch-common openvswitch-libofproto openvswitch-libopenvswitch openvswitch-libovsdb openvswitch-ovsdb openvswitch-vswitchd \
	  protobuf-lite xtables-legacy libunbound libunwind cJSON libwebsockets-openssl libmosquitto-ssl kmod-nf-tproxy libffi libiw uuidgen opensync-certs

PRPLMESH_DEP_PKGS:=kmod-sched-flower kmod-sched-act-vlan

define Profile/QSDK_Premium
	NAME:=Qualcomm Technologies, Inc SDK Premium Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_STANDARD) $(KPI) $(TEST_TOOLS) $(UTILS) $(COREBSP_UTILS) $(MINIDUMP) \
		$(STORAGE) $(AUDIO) $(FAILSAFE) $(DIAG) \
		$(CTRL_APP_DUT) $(FTM) \
		$(CNSS_DIAG) \
		$(HW_CRYPTO) \
		$(WIFI_PKGS) $(WIFI_FW_PKGS) \
		qsig kmod-noc-dp-drv kmod-llcc_perfmon libunwind iperf3 \
		$(NSS_PREMIUM) $(ERP) kmod-qca-hyfi-bridge
endef
#		$(QMSCT_CLIENT)

define Profile/QSDK_Premium/Description
	QSDK Premium package set configuration.
	Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_Premium))

define Profile/QSDK_OpenSync
	NAME:=Qualcomm Technologies, Inc SDK OpenSync Profile
	$(call Profile,QSDK_Premium)
	PACKAGES+=$(OPENSYNC)
endef

define Profile/QSDK_OpenSync/Description
	QSDK OpenSync package set configuration.
	Enables opensync packages
endef

$(eval $(call Profile,QSDK_OpenSync))

define Profile/QSDK_BigEndian
	NAME:=Qualcomm Technologies, Inc SDK Big Endian Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_STANDARD) $(STORAGE) $(TEST_TOOLS) \
		$(FAILSAFE) $(DIAG) $(COREBSP_UTILS) \
		$(KPI) $(CTRL_APP_DUT) \
		$(CNSS_DIAG) \
		$(QMSCT_CLIENT) $(FTM) \
		$(UTILS) \
		$(HW_CRYPTO) $(MINIDUMP) \
		$(WIFI_PKGS) \
		$(WIFI_FW_PKGS) kmod-qca-hyfi-bridge \
		$(NSS_BIGENDIAN)
endef

define Profile/QSDK_BigEndian/Description
        QSDK Big Endian package set configuration.
        Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_BigEndian))

define Profile/QSDK_Dpdk
	NAME:=Qualcomm Technologies, Inc SDK Dpdk Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_STANDARD) $(STORAGE) $(AUDIO) $(TEST_TOOLS) \
		$(FAILSAFE) $(DIAG) $(COREBSP_UTILS) $(CNSS_DIAG) \
		$(KPI) \
		$(QMSCT_CLIENT) $(FTM) \
		$(UTILS) \
		$(HW_CRYPTO) $(MINIDUMP) \
		$(WIFI_PKGS) $(CTRL_APP_DUT) \
		$(WIFI_FW_PKGS) kmod-qca-hyfi-bridge \
		$(NSS_DPDK)
endef

#		$(NSS_UDP_ST) $(NSS_MACSEC)

define Profile/QSDK_Dpdk/Description
	QSDK Dpdk package set configuration.
	Enables dpdk packages
endef

$(eval $(call Profile,QSDK_Dpdk))

define Profile/QSDK_Cov
	NAME:=Qualcomm Technologies, Inc SDK Cov Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_STANDARD) $(KPI) $(TEST_TOOLS) $(UTILS) $(COREBSP_UTILS) $(MINIDUMP) \
		$(STORAGE) $(AUDIO) $(FAILSAFE) $(DIAG) \
		$(CTRL_APP_DUT) $(FTM) \
		$(CNSS_DIAG) \
		$(HW_CRYPTO) \
		$(WIFI_PKGS) $(WIFI_FW_PKGS) \
		kmod-hota-driver kmod-qca-hyfi-bridge \
		$(NSS_COV)
endef

#		$(NSS_UDP_ST) $(NSS_MACSEC)

define Profile/QSDK_Cov/Description
	QSDK Cov package set configuration.
	Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_Cov))

define Profile/QSDK_Open
	NAME:=Qualcomm Technologies, Inc SDK Open Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_STANDARD) $(STORAGE) $(TEST_TOOLS) $(AUDIO) $(CNSS_DIAG) \
		$(FAILSAFE) $(DIAG) $(FTM) $(COREBSP_UTILS) \
		$(KPI) \
		$(WIFI_OPEN_PKGS) -qca-thermald $(UTILS) \
		$(USB_ETHERNET) \
		$(MINIDUMP) $(MACSEC_OPEN_PKGS) \
		-qca-cnss-daemon qca-wifi-hk-fw-hw1-10.4-asic athdiag qrtr ath11k-fwtest ath11k-qdss \
		-qapp-store libtirpc cfr_tools \
		wpad-mesh-openssl \
		iperf3 libunwind perf qsig kmod-noc-dp-drv kmod-llcc_perfmon llcc-perfmon-scripts \
		$(PRPLMESH_DEP_PKGS) \
		$(NSS_OPEN)
endef

#	$(HW_CRYPTO) $(QMI_SAMPLE_APP)

define Profile/QSDK_Open/Description
	QSDK Open package set configuration.
	Enables wifi open source packages
endef

$(eval $(call Profile,QSDK_Open))

define Profile/QSDK_256Open
	NAME:=Qualcomm Technologies, Inc SDK 256MB Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_256MB) \
		$(FAILSAFE) rng-tools -qca-cnss-daemon e2fsprogs losetup \
		-qapp-store libtirpc cfr_tools \
		-kmod-usb-dwc3-qcom-internal -kmod-ata-ahci -kmod-ata-core -kmod-scsi-core \
		-kmod-usb-phy-ipq5018 \
		-kmod-usb-core -kmod-usb-dwc3-internal -kmod-usb-gadget \
		$(FTM) $(DIAG) -qca-thermald \
		-kmod-usb-phy-ipq807x kmod-qca-hyfi-bridge \
		$(NSS_256) kmod-bonding \
		$(WIFI_OPEN_PKGS) $(WIFI_FW_PKGS) $(MACSEC_OPEN_PKGS) wpad-mesh-openssl
endef

define Profile/QSDK_256Open/Description
        QSDK Premium package set configuration.
        Enables wifi open source packages
endef

$(eval $(call Profile,QSDK_256Open))

define Profile/QSDK_Sfu
	NAME:=Qualcomm Technologies, Inc SDK Sfu Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_256MB) \
		$(FAILSAFE) $(COREBSP_UTILS) \
		$(KPI)  \
		$(USB_ETHERNET) rng-tools \
		$(MINIDUMP) \
		$(UTILS) \
		-kmod-usb-dwc3-qcom-internal -kmod-ata-ahci -kmod-ata-core -kmod-scsi-core \
                -kmod-usb-phy-ipq5018 \
                -kmod-usb-core -kmod-usb-dwc3-internal -kmod-usb-gadget -kmod-usb-phy-ipq807x \
		$(NSS_SFU)
endef

define Profile/QSDK_Sfu/Description
        QSDK Open package set configuration.
        disable all wifi packages
endef

$(eval $(call Profile,QSDK_Sfu))

define Profile/QSDK_QBuilder
	NAME:=Qualcomm Technologies, Inc SDK QBuilder Profile
	PACKAGES:=luci openssl-util \
		swconfig \
		kmod-scsi-core kmod-usb-storage kmod-usb-uas kmod-nls-cp437 kmod-nls-iso8859-1 kmod-fs-msdos \
		kmod-fs-vfat kmod-fs-ntfs ntfs-3g e2fsprogs losetup \
		rstp qca-hostap qca-hostapd-cli qca-wpa-supplicant qca-wpa-cli \
		qca-spectral qca-wpc sigma-dut ctrl_app_dut qcmbr qca-wrapd qca-wapid qca-acfg \
		qca-lowi qca-iface-mgr qca-icm qca-cfg80211 athdiag qca-cnss-daemon athtestcmd-lith \
		qca-wifi-hk-fw-hw1-10.4-asic mcproxy mwan3 \
		-dnsmasq dnsmasq-dhcpv6 bridge ip-full rp-pppoe-relay iptables-mod-extra \
		iputils-tracepath iputils-tracepath6 \
		kmod-nf-nathelper-extra kmod-nf-nathelper kmod-ipt-nathelper-rtsp luci-app-upnp \
		luci-app-ddns luci-proto-ipv6 luci-app-multiwan tc kmod-sched \
		kmod-sched-core kmod-sched-connmark kmod-ifb iptables kmod-pptp \
		iptables-mod-filter iptables-mod-ipopt iptables-mod-conntrack-extra \
		file luci-app-samba rng-tools profilerd ethtool i2c-tools tcpdump \
		pm-utils wififw_mount_script qca-thermald qca-qmi-framework qca-time-services \
		qca-wlanfw-upgrade dashboard sysstat kmod-bootconfig qca-cfg80211tool \
		$(NSS_QBUILDER)
endef

define Profile/QSDK_QBuilder/Description
	QSDK QBuilder package set configuration.
	Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_QBuilder))

define Profile/QSDK_Enterprise
	NAME:=Qualcomm Technologies, Inc SDK Enterprise Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_STANDARD) \
		$(WIFI_PKGS) $(WIFI_FW_PKGS) $(STORAGE) $(HW_CRYPTO) \
		$(UTILS) $(TEST_TOOLS) $(COREBSP_UTILS) \
		$(CNSS_DIAG) $(CTRL_APP_DUT) $(FTM) $(QMSCT_CLIENT) \
		$(DIAG) $(KPI) $(FAILSAFE) \
		$(NSS_ENTERPRISE)
endef

define Profile/QSDK_Enterprise/Description
	QSDK Enterprise package set configuration.
	Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_Enterprise))

define Profile/QSDK_MinEnt
	NAME:=Qualcomm Technologies, Inc SDK MinEnt Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_STANDARD) \
		$(WIFI_PKGS_MINENT) $(WIFI_FW_PKGS) $(STORAGE) $(HW_CRYPTO) \
		$(UTILS) $(TEST_TOOLS) $(COREBSP_UTILS) \
		$(CNSS_DIAG) \
		$(CTRL_APP_DUT) $(FTM) $(QMSCT_CLIENT) \
		$(DIAG) $(KPI) $(FAILSAFE) \
		$(NSS_MINENT)
endef

define Profile/QSDK_MinEnt/Description
	QSDK MinEnt package set configuration.
	Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_MinEnt))

define Profile/QSDK_MinEntOpen
	NAME:=Qualcomm Technologies, Inc SDK MinEnt Open Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_STANDARD) \
		$(WIFI_OPEN_PKGS) $(WIFI_FW_PKGS) $(STORAGE) $(HW_CRYPTO) \
		$(UTILS) $(TEST_TOOLS) $(COREBSP_UTILS) \
		$(CNSS_DIAG) $(FTM) -qca-cnss-daemon \
		$(DIAG) $(KPI) $(FAILSAFE)  wpad-mesh-openssl \
		$(NSS_MINENT_OPEN)
endef

define Profile/QSDK_MinEntOpen/Description
	QSDK MinEnt package set configuration.
	Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_MinEntOpen))

define Profile/QSDK_256
	NAME:=Qualcomm Technologies, Inc SDK 256MB Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_256MB) \
		$(FTM) $(DIAG) \
		$(WIFI_PKGS_256MB) $(WIFI_FW_PKGS) \
		$(FAILSAFE) $(ERP) \
		rng-tools \
		$(CTRL_APP_DUT) $(QMSCT_CLIENT) \
		e2fsprogs losetup \
		-kmod-usb-dwc3-qcom-internal -kmod-ata-ahci -kmod-ata-core -kmod-scsi-core \
		-kmod-usb-phy-ipq5018 \
		-kmod-usb-core -kmod-usb-dwc3-internal -kmod-usb-gadget \
		-kmod-usb-phy-ipq807x kmod-vxlan kmod-qca-hyfi-bridge \
		$(NSS_256)
endef

# $(CNSS_DIAG)
# $(NSS_MACSEC)
# kmod-qca-nss-ecm-wifi-plugin

define Profile/QSDK_256/Description
	QSDK Premium package set configuration.
	Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_256))

define Profile/QSDK_512
	NAME:=Qualcomm Technologies, Inc SDK 512MB Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_STANDARD) $(AUDIO) \
		$(WIFI_PKGS) $(WIFI_FW_PKGS) $(STORAGE) \
		$(UTILS) $(HW_CRYPTO) \
		$(TEST_TOOLS) \
		$(COREBSP_UTILS) $(FAILSAFE) $(DIAG) $(ERP)\
		$(CNSS_DIAG) $(CTRL_APP_DUT) $(FTM) $(QMSCT_CLIENT) $(KPI) \
		$(MINIDUMP) iperf3 kmod-qca-hyfi-bridge \
		$(NSS_512)
endef

define Profile/QSDK_512/Description
	QSDK Premium package set configuration.
	Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_512))

define Profile/QSDK_Default
	NAME:=Qualcomm Technologies, Inc SDK Default Profile
	PACKAGES:=
endef

define Profile/QSDK_Default/Description
	QSDK Default package set configuration.
	Enables wifi open source packages
endef

$(eval $(call Profile,QSDK_Default))

define Profile/QSDK_16M
	NAME:=Qualcomm Technologies, Inc SDK 16MB Flash Profile
	PACKAGES:=$(OPENWRT_BASIC) wififw_mount_script \
		$(WIFI_PKGS_16M) qca-wifi-hk-fw-hw1-10.4-asic \
		xz xz-utils -kmod-usb-f-qdss \
		-kmod-testssr -kmod-ata-core -kmod-ata-ahci -kmod-ata-ahci-platform \
		-kmod-usb2 -kmod-usb3 -kmod-usb-phy-ipq5018 -kmod-usb-dwc3-qcom \
		-kmod-bt_tty -kmod-clk-test -sysupgrade-helper -fwupgrade-tools \
		-urandom-seed -urngd -kmod-usb-core -kmod-usb-dwc3-internal \
		-kmod-usb-dwc3-qcom-internal -kmod-usb-gadget -kmod-usb-phy-ipq807x -kmod-usb-phy-ipq5018 \
		$(NSS_16M)
endef

define Profile/QSDK_16M/Description
	QSDK 16M package set configuration.
	Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_16M))
