NETWORKING_MK := $(TOPDIR)/qca/feeds/nss/apps-oss/networking.mk

ifneq ("$(wildcard $(NETWORKING_MK))","")
include $(NETWORKING_MK)
else
NSS_COMMON:= kmod-qca-nss-dp

QCA_ECM_STANDARD:= kmod-qca-nss-ecm-standard

QCA_ECM_ENTERPRISE:= kmod-qca-nss-ecm-noload kmod-qca-nss-ecm-wifi-plugin

QCA_ECM_PREMIUM:= kmod-qca-nss-ecm-premium kmod-qca-nss-ecm-wifi-plugin

NSS_PPE_256:= kmod-qca-nss-ppe \
	kmod-qca-nss-ppe-vp \
	kmod-qca-nss-ppe-bridge-mgr \
	kmod-qca-nss-ppe-pppoe-mgr \
	kmod-qca-nss-ppe-ds \
	kmod-qca-nss-ppe-dsa-mgr

NSS_PPE_16M:= kmod-qca-nss-ppe \
	kmod-qca-nss-ppe-vp \
	kmod-qca-nss-ppe-bridge-mgr \
	kmod-qca-nss-ppe-pppoe-mgr \
	kmod-qca-nss-ppe-lag-mgr \
	kmod-qca-nss-ppe-dsa-mgr

NSS_PPE:= kmod-qca-nss-ppe \
	kmod-qca-nss-ppe-vp \
	kmod-qca-nss-ppe-bridge-mgr \
	kmod-qca-nss-ppe-pppoe-mgr \
	kmod-qca-nss-ppe-lag-mgr \
	kmod-qca-nss-ppe-tunipip6 \
	kmod-qca-nss-ppe-gretap \
	kmod-qca-nss-ppe-vxlanmgr \
	kmod-qca-nss-ppe-mapt \
	kmod-qca-nss-ppe-rule \
	kmod-qca-nss-ppe-qdisc \
	kmod-qca-nss-ppe-ds \
	kmod-qca-nss-ppe-mirror-test \
	kmod-qca-nss-ppe-l2tp \
	kmod-qca-nss-ppe-dsa-mgr

NSS_CRYPTO_MINENT:= kmod-qca-nss-crypto kmod-qca-nss-cfi-cryptoapi -kmod-qca-nss-cfi-ocf kmod-qca-nss-drv-ipsecmgr kmod-qca-nss-drv-ipsecmgr-xfrm -kmod-crypto-ocf -kmod-qca-nss-drv-ipsecmgr-klips

NSS_CLIENTS_STANDARD:= kmod-qca-ovsmgr kmod-qca-nss-dscpstats

NSS_CRYPTO:= kmod-qca-nss-crypto kmod-qca-nss-cfi-cryptoapi \
        kmod-qca-nss-eip kmod-qca-nss-eip-crypto kmod-qca-nss-eip-ipsec

NSS_NETFN_MINENT:= kmod-qca-nss-netfn-pkt-steer \
	kmod-qca-nss-netfn-capwap \
	kmod-qca-nss-netfn-dtls \
	kmod-qca-nss-netfn-capwapmgr \
	kmod-qca-nss-flowmgr

NSS_NETFN_TCPST:= nss-tcp-st-cli

NSS_SOCK_OFFLOAD:= kmod-qca-nss-netfn-sk-offload

NSS_UDP_ST:= kmod-nss-udp-st-drv nss-udp-st

NSS_NSM:= qca-nsm-app

NSS_FLS:= kmod-qca-nss-fls kmod-qca-nss-fls-lite

OPENVPN:= -openvpn-easy-rsa openvpn-openssl luci-app-openvpn

UDP_CLF:= udp-clf

SAL_QOS:= qca-sal-qos-test qca-sal-rule-test

SWITCH_SSDK_NOHNAT_PKGS:= kmod-qca-ssdk-nohnat qca-ssdk-shell swconfig kmod-qca8k

QCA_PHY_PKGS:= kmod-qca-nss-phy kmod-qca81xx kmod-qca8084 kmod-aqr-phy kmod-qca8xxx-phc kmod-qca-mdio

NSS_MACSEC:= kmod-qca-nss-macsec qca-hapd-supp-macsec

MACSEC_OPEN_PKGS:= kmod-qca-nss-macsec wpa-supplicant-macsec hostapd-macsec

NSS_L2TP:= kmod-l2tp kmod-l2tp-ip kmod-l2tp-eth

WIFI_PLUGINS:=kmod-qca-wifi-plugins

DEFAULT_PACKAGES += -dnsmasq

ERP:=kmod-rsrcmgr-netstandby-drv

NETWORKING:=mcproxy -dnsmasq dnsmasq-dhcpv6 bridge ip-bridge ip-full mwan3 \
	rp-pppoe-relay iptables-mod-extra iputils-tracepath iputils-tracepath6 \
	luci-app-upnp luci-app-ddns luci-proto-ipv6 \
	kmod-nf-nathelper-extra kmod-nf-nathelper \
	kmod-ipt-nathelper-rtsp nftables kmod-nft-netdev \
	kmod-nft-offload kmod-bonding vxlan kmod-gre6 conntrack

NETWORKING_256MB:=-dnsmasq dnsmasq-dhcpv6 bridge ip-full \
	rp-pppoe-relay iputils-tracepath iputils-tracepath6

NETWORKING_8MB:=dnsmasq -dnsmasq-dhcpv6 kmod-nf-nathelper-extra kmod-ipt-nathelper-rtsp

NETWORKING_16MB:=-dnsmasq dnsmasq-dhcpv6 kmod-nf-nathelper-extra kmod-ipt-nathelper-rtsp ip \
	rp-pppoe-relay

NPT66:= kmod-ipt-nat6 iptables-mod-nat-extra

CD_ROUTER:=kmod-ipt-ipopt kmod-bonding kmod-ipt-sctp kmod-ipt-raw kmod-ipt-raw6 lacpd \
	arptables ds-lite 6rd ddns-scripts xl2tpd \
	quagga quagga-ripd quagga-zebra quagga-watchquagga quagga-vtysh \
	kmod-ipv6 ip6tables iptables-mod-ipsec iptables-mod-filter \
	isc-dhcp-relay-ipv6 rp-pppoe-server ppp-mod-pptp iptables-mod-physdev

CD_ROUTER_256MB:=kmod-ipv6 ddns-scripts rp-pppoe-server

QOS:=tc-full kmod-sched kmod-sched-core kmod-sched-prio kmod-sched-red \
	kmod-sched-cake kmod-sched-pie kmod-sched-act-police kmod-sched-act-ipt \
	kmod-sched-connmark kmod-ifb iptables iptables-mod-filter \
	iptables-mod-ipopt iptables-mod-conntrack-extra

#These packages depend on SWITCH_SSDK_NOHNAT_PKGS
IGMPSNOOPING_RSTP:=rstp qca-mcs-apps

IPSEC:=kmod-ipsec kmod-ipsec4 kmod-ipsec6

NSS_USERSPACE_OSS:=ppecfg

NSS_FLS:=kmod-qca-nss-fls kmod-qca-nss-fls-lite

EMESH_SP:=kmod-emesh-sp

DPDK:=dpdk-tools kmod-qca-nss-dpdk-cfgmgr kmod-nss-ppe-uio

EXTRA_NETWORKING:= $(CD_ROUTER) $(NSS_CRYPTO) $(NSS_CLIENTS_STANDARD)

STRONGSWAN:=strongswan strongswan-default strongswan-mod-ctr strongswan-mod-gcm strongswan-mod-kdf strongswan-mod-openssl strongswan-mod-uci

MMAP_TELEMETRY:= kmod-qca-mmap-telemetry
SXC_DRVS:= kmod-qca-sdc-drv kmod-qca-sac-drv
endif

HW_CRYPTO:= kmod-crypto-qcrypto

WIFI_OPEN_PKGS:= kmod-ath12k kmod-ath11k wpad-mesh hostapd-utils \
	control-app-open sigma-dut-open wpa-cli qca-wifi-scripts cnssdiag myftm kmod-telemetry-agent \
	athtestcmd-lith-nl udtool qca-cfg80211tool wifitelemetry
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
	qca-wlanfw-upgrade qti-license-pfm dashboard qti-softsku-license-loader-libs llcc-perfmon-scripts

FAILSAFE:= kmod-bootconfig

BLUETOOTH:=kmod-bluetooth bluez-libs bluez-utils kmod-ath3k

BLUETOPIA:=bluetopia

ZIGBEE:=zigbee_efr32

MAP_PKGS:=map 464xlat tayga

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

NSS_SOCK_OFFLOAD:= kmod-qca-nss-netfn-sk-offload

PRPLMESH_DEP_PKGS:=kmod-sched-flower kmod-sched-act-vlan

define Profile/QSDK_Premium
	NAME:=Qualcomm Technologies, Inc SDK Premium Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_STANDARD) $(KPI) $(TEST_TOOLS) $(UTILS) $(COREBSP_UTILS) $(MINIDUMP) \
		$(STORAGE) $(AUDIO) $(FAILSAFE) $(DIAG) $(NPT66) \
		$(NETWORKING) $(CTRL_APP_DUT) $(FTM) \
		$(OPENVPN) $(CNSS_DIAG) $(CD_ROUTER) $(MAP_PKGS) \
		$(QCA_ECM_PREMIUM) $(NSS_PPE) $(NSS_COMMON) -lacpd \
		$(AQ_PHY) $(NSS_USERSPACE_OSS) \
		$(NSS_CLIENTS_STANDARD) $(NSS_CRYPTO) kmod-macvlan \
		$(HW_CRYPTO) $(IPSEC) $(QOS) $(SAL_QOS) $(SWITCH_SSDK_NOHNAT_PKGS) $(QCA_PHY_PKGS) \
		$(IGMPSNOOPING_RSTP) $(NSS_L2TP) $(NSS_MACSEC) $(NSS_UDP_ST) $(NSS_NSM) $(NSS_FLS) $(UDP_CLF) \
		$(WIFI_PKGS) $(WIFI_FW_PKGS) \
		$(EMESH_SP) $(WIFI_PLUGINS) $(ERP) \
		kmod-qca-hyfi-bridge $(NSS_NETFN_TCPST) qsig kmod-noc-dp-drv kmod-llcc_perfmon libunwind iperf3 $(MMAP_TELEMETRY) $(SXC_DRVS)
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
                $(FAILSAFE) $(DIAG) $(COREBSP_UTILS) $(NSS_PPE) $(NSS_COMMON) \
                $(QCA_ECM_PREMIUM) $(NETWORKING) $(CD_ROUTER) $(KPI) $(MAP_PKGS) $(CTRL_APP_DUT) \
                $(SWITCH_SSDK_NOHNAT_PKGS) $(QCA_PHY_PKGS) $(IGMPSNOOPING_RSTP) -lacpd $(CNSS_DIAG) \
                $(QMSCT_CLIENT) $(FTM) \
                $(UTILS) $(NSS_CLIENTS_STANDARD) $(NSS_CRYPTO) \
                $(HW_CRYPTO) $(IPSEC) $(MINIDUMP) $(QOS) $(NSS_USERSPACE_OSS)\
                $(OPENVPN) kmod-macvlan \
                kmod-qca-hyfi-bridge $(NSS_NSM) $(SAL_QOS) $(WIFI_PKGS) $(NPT66) \
                $(NSS_FLS) $(UDP_CLF) $(NSS_L2TP) $(EMESH_SP) $(WIFI_FW_PKGS) $(NSS_MACSEC) $(NSS_UDP_ST)
endef

define Profile/QSDK_BigEndian/Description
        QSDK Big Endian package set configuration.
        Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_BigEndian))

define Profile/QSDK_Dpdk
	NAME:=Qualcomm Technologies, Inc SDK Dpdk Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_STANDARD) $(STORAGE) $(AUDIO) $(TEST_TOOLS) \
		$(FAILSAFE) $(DIAG) $(COREBSP_UTILS) $(NSS_PPE) $(NSS_COMMON) $(CNSS_DIAG) \
		$(QCA_ECM_PREMIUM) $(NETWORKING) $(CD_ROUTER) $(KPI) $(MAP_PKGS) \
		$(SWITCH_SSDK_NOHNAT_PKGS) $(QCA_PHY_PKGS) $(IGMPSNOOPING_RSTP) -lacpd \
		$(QMSCT_CLIENT) $(FTM) \
		$(UTILS) $(NSS_CLIENTS_STANDARD) $(NSS_CRYPTO) \
		$(HW_CRYPTO) $(IPSEC) $(MINIDUMP) $(QOS) $(NSS_USERSPACE_OSS)\
		$(OPENVPN) kmod-macvlan kmod-qca-hyfi-bridge \
		$(NSS_NSM) $(SAL_QOS) $(WIFI_PKGS) $(NPT66) $(CTRL_APP_DUT) \
		$(NSS_FLS) $(UDP_CLF) $(NSS_L2TP) $(EMESH_SP) $(WIFI_FW_PKGS) $(DPDK)
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
                $(STORAGE) $(AUDIO) $(FAILSAFE) $(DIAG) $(NPT66) \
                $(NETWORKING) $(CTRL_APP_DUT) $(FTM) \
                $(OPENVPN) $(CNSS_DIAG) $(CD_ROUTER) $(MAP_PKGS) \
                $(QCA_ECM_PREMIUM) $(NSS_PPE) $(NSS_COMMON) -lacpd \
                $(AQ_PHY) $(NSS_USERSPACE_OSS) \
                $(NSS_CLIENTS_STANDARD) $(NSS_CRYPTO) kmod-macvlan \
                $(HW_CRYPTO) $(IPSEC) $(QOS) $(SAL_QOS) $(SWITCH_SSDK_NOHNAT_PKGS) $(QCA_PHY_PKGS) \
                $(IGMPSNOOPING_RSTP) $(NSS_L2TP) $(NSS_MACSEC) $(NSS_UDP_ST) $(NSS_NSM) $(NSS_FLS) $(UDP_CLF) \
                $(WIFI_PKGS) $(WIFI_FW_PKGS) \
                $(EMESH_SP) $(WIFI_PLUGINS) kmod-hota-driver \
                kmod-qca-hyfi-bridge $(NSS_NETFN_TCPST)
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
		$(FAILSAFE) $(DIAG) $(FTM) $(COREBSP_UTILS) $(NSS_PPE) $(NSS_COMMON) $(NSS_USERSPACE_OSS)\
		$(QCA_ECM_PREMIUM) $(STRONGSWAN) $(NETWORKING) $(CD_ROUTER) \
		$(SWITCH_SSDK_NOHNAT_PKGS) $(QCA_PHY_PKGS) $(KPI) $(IGMPSNOOPING_RSTP) $(MAP_PKGS) \
		$(WIFI_OPEN_PKGS) -qca-thermald $(UTILS) $(EXTRA_NETWORKING) \
		$(USB_ETHERNET) $(NSS_COMMON) $(EMESH_SP) $(NPT66)\
		$(NSS_NSM) $(SAL_QOS) $(IPSEC) $(MINIDUMP) $(NSS_CRYPTO) $(QOS) -lacpd $(AQ_PHY) $(MACSEC_OPEN_PKGS) \
		-qca-cnss-daemon qca-wifi-hk-fw-hw1-10.4-asic athdiag qrtr ath11k-fwtest ath11k-qdss \
		-qapp-store libtirpc cfr_tools kmod-qca-ovsmgr -qca-mcs-apps \
		$(NSS_FLS) $(UDP_CLF) kmod-macvlan $(NSS_L2TP) wpad-mesh-openssl \
		$(NSS_UDP_ST) $(EMESH_SP) $(NSS_NETFN_TCPST) $(NSS_SOCK_OFFLOAD) iperf3 \
		$(PRPLMESH_DEP_PKGS) $(MMAP_TELEMETRY) $(SXC_DRVS)
endef

#	$(HW_CRYPTO) $(QMI_SAMPLE_APP)

define Profile/QSDK_Open/Description
	QSDK Open package set configuration.
	Enables wifi open source packages
endef

$(eval $(call Profile,QSDK_Open))

define Profile/QSDK_256Open
        NAME:=Qualcomm Technologies, Inc SDK 256MB Profile
        PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_256MB) $(NSS_COMMON) \
                $(SWITCH_SSDK_NOHNAT_PKGS) $(QCA_PHY_PKGS) $(FTM) $(DIAG) \
                -qca-thermald $(NSS_USERSPACE_OSS) $(CD_ROUTER_256MB) $(NSS_PPE_256) \
                $(FAILSAFE) $(NETWORKING_256MB) rng-tools -lacpd -qca-cnss-daemon \
                $(IGMPSNOOPING_RSTP) $(SAL_QOS) $(UDP_CLF) kmod-qca-nss-fls-lite e2fsprogs losetup kmod-qca-nss-ecm-wifi-plugin \
		-qapp-store libtirpc cfr_tools kmod-qca-ovsmgr -qca-mcs-apps kmod-macvlan \
                -kmod-usb-dwc3-qcom-internal -kmod-ata-ahci -kmod-ata-core -kmod-scsi-core \
                -kmod-usb-phy-ipq5018 \
                -kmod-usb-core -kmod-usb-dwc3-internal -kmod-usb-gadget \
                -kmod-usb-phy-ipq807x kmod-vxlan

endef

define Profile/QSDK_256Open/Description
        QSDK Premium package set configuration.
        Enables wifi open source packages
endef

$(eval $(call Profile,QSDK_256Open))

define Profile/QSDK_Sfu
        NAME:=Qualcomm Technologies, Inc SDK Sfu Profile
        PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_256MB) \
                $(FAILSAFE) $(COREBSP_UTILS) $(NSS_COMMON) $(NSS_USERSPACE_OSS)\
                $(SWITCH_SSDK_NOHNAT_PKGS) $(QCA_PHY_PKGS) $(KPI) $(IGMPSNOOPING_RSTP) -qca-mcs-apps \
                $(USB_ETHERNET) $(NSS_COMMON) $(NSS_PPE_256) $(CD_ROUTER_256MB) rng-tools \
                $(MINIDUMP) $(QOS) $(AQ_PHY) $(SAL_QOS) $(UDP_CLF) kmod-qca-nss-fls-lite \
                $(UTILS) kmod-qca-nss-macsec kmod-macvlan $(NSS_UDP_ST) $(NSS_NETFN_TCPST) $(NETWORKING_256MB) \
                $(NSS_SOCK_OFFLOAD) iperf3 kmod-vxlan
endef

define Profile/QSDK_Sfu/Description
        QSDK Open package set configuration.
        disable all wifi packages
endef

$(eval $(call Profile,QSDK_Sfu))

define Profile/QSDK_QBuilder
	NAME:=Qualcomm Technologies, Inc SDK QBuilder Profile
	PACKAGES:=luci openssl-util kmod-qca-nss-dp kmod-qca-nss-drv -kmod-qca-nss-gmac \
		-qca-nss-fw2-retail qca-nss-fw-hk-retail qca-nss-fw-cp-retail qca-nss-fw-mp-retail \
		kmod-qca-ssdk-nohnat qca-ssdk-shell swconfig \
		kmod-scsi-core kmod-usb-storage kmod-usb-uas kmod-nls-cp437 kmod-nls-iso8859-1 kmod-fs-msdos \
		kmod-fs-vfat kmod-fs-ntfs ntfs-3g e2fsprogs losetup \
		kmod-qca-nss-sfe \
		rstp qca-mcs-apps qca-hostap qca-hostapd-cli qca-wpa-supplicant qca-wpa-cli \
		qca-spectral qca-wpc sigma-dut ctrl_app_dut qcmbr qca-wrapd qca-wapid qca-acfg \
		qca-lowi qca-iface-mgr qca-icm qca-cfg80211 athdiag qca-cnss-daemon athtestcmd-lith \
		qca-wifi-hk-fw-hw1-10.4-asic mcproxy mwan3 \
		-dnsmasq dnsmasq-dhcpv6 bridge ip-full rp-pppoe-relay iptables-mod-extra \
		iputils-tracepath iputils-tracepath6 \
		kmod-nf-nathelper-extra kmod-nf-nathelper kmod-ipt-nathelper-rtsp luci-app-upnp \
		luci-app-ddns luci-proto-ipv6 luci-app-multiwan tc kmod-sched \
		kmod-sched-core kmod-sched-connmark kmod-ifb iptables kmod-pptp \
		iptables-mod-filter iptables-mod-ipopt iptables-mod-conntrack-extra \
		qca-nss-fw-eip-hk qca-nss-fw-eip-cp kmod-qca-ovsmgr kmod-qca-nss-dscpstats \
		file luci-app-samba rng-tools profilerd ethtool i2c-tools tcpdump \
		pm-utils wififw_mount_script qca-thermald qca-qmi-framework qca-time-services \
		qca-wlanfw-upgrade dashboard sysstat kmod-bootconfig qca-cfg80211tool
endef

define Profile/QSDK_QBuilder/Description
	QSDK QBuilder package set configuration.
	Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_QBuilder))

define Profile/QSDK_Enterprise
	NAME:=Qualcomm Technologies, Inc SDK Enterprise Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_STANDARD) $(NSS_COMMON) \
		$(SWITCH_SSDK_NOHNAT_PKGS) $(QCA_PHY_PKGS) \
		$(WIFI_PKGS) $(WIFI_FW_PKGS) $(STORAGE) $(HW_CRYPTO) \
		$(IGMPSNOOPING_RSTP) $(NETWORKING) $(QOS) $(UTILS) $(TEST_TOOLS) $(COREBSP_UTILS) \
		$(QCA_ECM_ENTERPRISE) $(NSS_MACSEC) $(NSS_CRYPTO) \
		$(IPSEC) $(STRONGSWAN) $(CD_ROUTER) \
		$(CNSS_DIAG) $(CTRL_APP_DUT) $(FTM) $(QMSCT_CLIENT) -lacpd \
		$(DIAG) $(KPI) $(FAILSAFE) \
		$(NSS_PPE) $(NSS_USERSPACE_OSS) kmod-qca-nss-drv-mscs
endef

define Profile/QSDK_Enterprise/Description
	QSDK Enterprise package set configuration.
	Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_Enterprise))

define Profile/QSDK_MinEnt
	NAME:=Qualcomm Technologies, Inc SDK MinEnt Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_STANDARD) $(NSS_COMMON) \
		$(SWITCH_SSDK_NOHNAT_PKGS) $(QCA_PHY_PKGS) \
		$(WIFI_PKGS_MINENT) $(WIFI_FW_PKGS) $(STORAGE) $(HW_CRYPTO) \
		$(NETWORKING) $(QOS) $(UTILS) $(TEST_TOOLS) $(COREBSP_UTILS) \
		$(QCA_ECM_ENTERPRISE) $(NSS_MACSEC) $(NSS_CRYPTO_MINENT) \
		$(IPSEC) $(STRONGSWAN) $(CD_ROUTER) $(CNSS_DIAG) \
		$(CTRL_APP_DUT) $(FTM) $(QMSCT_CLIENT) -lacpd -kmod-qca-nss-ecm-wifi-plugin \
		$(DIAG) $(KPI) $(FAILSAFE) $(NSS_PPE) $(NSS_USERSPACE_OSS)\
		$(NSS_NETFN_MINENT)
endef

define Profile/QSDK_MinEnt/Description
	QSDK MinEnt package set configuration.
	Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_MinEnt))

define Profile/QSDK_256
	NAME:=Qualcomm Technologies, Inc SDK 256MB Profile
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_256MB) $(NSS_COMMON) \
		$(SWITCH_SSDK_NOHNAT_PKGS) $(QCA_PHY_PKGS) $(FTM) $(DIAG) \
		$(WIFI_PKGS_256MB) $(WIFI_FW_PKGS) $(CD_ROUTER_256MB) $(NSS_PPE_256) \
		$(FAILSAFE) \
		$(NETWORKING_256MB) rng-tools \
		$(QCA_ECM_STANDARD) $(WIFI_PLUGINS) \
		-lacpd $(CTRL_APP_DUT) $(QMSCT_CLIENT) $(ERP) \
		$(IGMPSNOOPING_RSTP) $(EMESH_SP) $(SAL_QOS) $(UDP_CLF) kmod-qca-nss-fls-lite e2fsprogs losetup kmod-qca-nss-ecm-wifi-plugin \
		-kmod-usb-dwc3-qcom-internal -kmod-ata-ahci -kmod-ata-core -kmod-scsi-core \
		-kmod-usb-phy-ipq5018 \
		-kmod-usb-core -kmod-usb-dwc3-internal -kmod-usb-gadget \
		-kmod-usb-phy-ipq807x kmod-vxlan kmod-qca-hyfi-bridge

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
	PACKAGES:=$(OPENWRT_BASIC) $(OPENWRT_STANDARD) $(AUDIO) $(NSS_COMMON) \
		$(SWITCH_SSDK_NOHNAT_PKGS) $(QCA_PHY_PKGS) \
		$(WIFI_PKGS) $(WIFI_FW_PKGS) $(STORAGE) $(CD_ROUTER) $(SAL_QOS) $(UDP_CLF) kmod-qca-nss-fls-lite \
		$(NETWORKING) $(OPENVPN) $(UTILS) $(HW_CRYPTO) \
		$(IGMPSNOOPING_RSTP) $(IPSEC) $(QOS) $(QCA_ECM_PREMIUM) $(NSS_PPE) $(NSS_USERSPACE_OSS) \
		$(NSS_MACSEC) $(TEST_TOOLS) $(NSS_CRYPTO) $(NSS_CLIENTS_STANDARD) \
		$(COREBSP_UTILS) $(MAP_PKGS) $(FAILSAFE) -lacpd $(DIAG) $(ERP) \
		$(CNSS_DIAG) $(CTRL_APP_DUT) $(FTM) $(QMSCT_CLIENT) $(KPI) \
		kmod-qca-hyfi-bridge $(EMESH_SP) $(WIFI_PLUGINS) \
		kmod-macvlan $(MINIDUMP) $(NSS_L2TP) iperf3
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
	PACKAGES:=$(OPENWRT_BASIC) wififw_mount_script $(NSS_COMMON) $(NSS_PPE_16M) \
		$(SWITCH_SSDK_NOHNAT_PKGS) $(QCA_PHY_PKGS) \
		$(WIFI_PKGS_16M) qca-wifi-hk-fw-hw1-10.4-asic $(NETWORKING_16MB) \
		$(IGMPSNOOPING_RSTP) $(QCA_ECM_STANDARD) \
		xz xz-utils -kmod-usb-f-qdss \
		-kmod-testssr -kmod-ata-core -kmod-ata-ahci -kmod-ata-ahci-platform \
		-kmod-usb2 -kmod-usb3 -kmod-usb-phy-ipq5018 -kmod-usb-dwc3-qcom \
		-kmod-bt_tty -kmod-clk-test -sysupgrade-helper -fwupgrade-tools \
		-urandom-seed -urngd -kmod-usb-core -kmod-usb-dwc3-internal \
		-kmod-usb-dwc3-qcom-internal -kmod-usb-gadget -kmod-usb-phy-ipq807x -kmod-usb-phy-ipq5018
endef

define Profile/QSDK_16M/Description
	QSDK 16M package set configuration.
	Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_16M))
