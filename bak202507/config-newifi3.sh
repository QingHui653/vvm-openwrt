echo "开始 config 配置"
#此为必须,进入openwrt目录
pwd
ls -l
cd openwrt
pwd
ls -l

rm -f ./.config*
touch ./.config

#
# ========================固件定制部分========================
# 
# 
# 如果不对本区块做出任何编辑, 则生成默认配置固件. 
# 
# 以下为定制化固件选项和说明:
#
#
# 有些插件/选项是默认开启的, 如果想要关闭, 请参照以下示例进行编写:
# 
#          =========================================
#         |  # 取消编译VMware镜像:                   |
#         |  cat >> .config <<EOF                   |
#         |  # CONFIG_VMDK_IMAGES is not set        |
#         |  EOF                                    |
#          =========================================
#
# 
# 以下是一些提前准备好的一些插件选项.
# 直接取消注释相应代码块即可应用. 不要取消注释代码块上的汉字说明.
# 如果不需要代码块里的某一项配置, 只需要删除相应行.
#
# 如果需要其他插件, 请按照示例自行添加.
# 注意, 只需添加依赖链顶端的包. 如果你需要插件 A, 同时 A 依赖 B, 即只需要添加 A.
# 
# 无论你想要对固件进行怎样的定制, 都需要且只需要修改 EOF 回环内的内容.
# 
# 编译x64固件:
cat >> .config <<EOF
CONFIG_TARGET_ramips=y
CONFIG_TARGET_ramips_mt7621=y
CONFIG_TARGET_ramips_mt7621_DEVICE_d-team_newifi-d2=y
EOF
# 固件压缩:
cat >> .config <<EOF
CONFIG_TARGET_IMAGES_GZIP=y
EOF


# IPv6支持:
cat >> .config <<EOF
CONFIG_IPV6=y
CONFIG_PACKAGE_dnsmasq_full_dhcpv6=y
CONFIG_PACKAGE_ipv6helper=y
CONFIG_PACKAGE_odhcp6c=y
CONFIG_PACKAGE_odhcpd-ipv6only=y
CONFIG_PACKAGE_luci-proto-ipv6=y
CONFIG_PACKAGE_kmod-ipt-nat6=y
CONFIG_PACKAGE_ipv6helper=y
CONFIG_PACKAGE_kmod-ip6tables=y
CONFIG_PACKAGE_kmod-ip6tables-extra=y
CONFIG_PACKAGE_6in4=y
EOF

#  samba扩展
cat >> .config <<EOF
CONFIG_PACKAGE_autosamba=y
#CONFIG_PACKAGE_samba36-server is not set
EOF

# 多文件系统支持:
cat >> .config <<EOF
CONFIG_PACKAGE_kmod-fs-nfs=y
CONFIG_PACKAGE_kmod-fs-nfs-common=y
CONFIG_PACKAGE_kmod-fs-nfs-v3=y
CONFIG_PACKAGE_kmod-fs-nfs-v4=y
CONFIG_PACKAGE_kmod-fs-ntfs=y
CONFIG_PACKAGE_kmod-fs-squashfs=y
EOF
# USB3.0支持:
cat >> .config <<EOF
CONFIG_PACKAGE_automount=y
CONFIG_PACKAGE_kmod-fs-qntfs=y
CONFIG_PACKAGE_kmod-scsi-core=y
CONFIG_PACKAGE_kmod-fs-exfat=y
CONFIG_PACKAGE_kmod-fs-ext4=y
CONFIG_PACKAGE_ntfs-3g=y
CONFIG_PACKAGE_kmod-fs-vfat=y
CONFIG_PACKAGE_kmod-fuse=y
CONFIG_PACKAGE_kmod-mtd-rw=y
CONFIG_PACKAGE_kmod-mmc=y
CONFIG_PACKAGE_kmod-sdhci=y
CONFIG_PACKAGE_kmod-mmc-spi=y
CONFIG_PACKAGE_kmod-usb-core=y
CONFIG_PACKAGE_kmod-usb-dwc3=y
CONFIG_PACKAGE_kmod-usb-dwc3-of-simple=y
CONFIG_PACKAGE_kmod-usb-ehci=y
CONFIG_PACKAGE_kmod-usb-ohci=y
CONFIG_PACKAGE_kmod-usb-printer=y
CONFIG_PACKAGE_kmod-usb-storage=y
CONFIG_PACKAGE_kmod-usb-storage-extras=y
CONFIG_PACKAGE_kmod-usb-uhci=y
CONFIG_PACKAGE_kmod-usb2=y
CONFIG_PACKAGE_kmod-usb3=y
EOF

# 开源无线无线驱动:
# cat >> .config <<EOF
# CONFIG_PACKAGE_wireless-regdb=y
# CONFIG_PACKAGE_kmod-cfg80211=y
# CONFIG_PACKAGE_kmod-mac80211=y
# CONFIG_PACKAGE_MAC80211_DEBUGFS=y
# CONFIG_PACKAGE_MAC80211_MESH=y
# #use opensource wifi driver
# CONFIG_PACKAGE_kmod-mt7603=y
# CONFIG_PACKAGE_kmod-mt7603e=n
# CONFIG_PACKAGE_kmod-mt76x2=y
# CONFIG_PACKAGE_kmod-mt76x2-common=y
# CONFIG_PACKAGE_kmod-mt76x2e=n
# CONFIG_PACKAGE_wpad-openssl=y
# CONFIG_PACKAGE_wpa-supplicant=y
# EOF

# 闭源无线驱动:
cat >> .config <<EOF
CONFIG_PACKAGE_luci-app-mtwifi=y
CONFIG_PACKAGE_kmod-mt7603e=y
CONFIG_PACKAGE_kmod-mt76x2e=y
EOF

# 常用LuCI插件选择:
cat >> .config <<EOF
CONFIG_PACKAGE_luci-app-aria2=y
CONFIG_PACKAGE_luci-app-frpc=y
CONFIG_PACKAGE_luci-app-filetransfer=y

CONFIG_PACKAGE_luci-app-koolproxyR=y
CONFIG_PACKAGE_luci-app-adbyby-plus=y

CONFIG_PACKAGE_luci-app-ssr-plus=y
CONFIG_PACKAGE_luci-app-unblockmusic=y
CONFIG_UnblockNeteaseMusic_Go=n
CONFIG_UnblockNeteaseMusic_NodeJS=y
# CONFIG_PACKAGE_luci-app-passwall=y

CONFIG_PACKAGE_luci-app-webadmin=y
CONFIG_PACKAGE_luci-app-wrtbwmon=y

EOF
# 取消默认插件
cat >> .config <<EOF
CONFIG_PACKAGE_luci-app-music-remote-center=n
CONFIG_PACKAGE_luci-app-airplay2=n
CONFIG_PACKAGE_luci-app-vsftpd=n

CONFIG_PACKAGE_luci-app-ddns=n
CONFIG_PACKAGE_luci-app-xlnetacc=n
CONFIG_PACKAGE_luci-app-wol=n
CONFIG_PACKAGE_luci-app-accesscontrol=n

CONFIG_PACKAGE_luci-app-zerotier=n
CONFIG_PACKAGE_luci-app-openvpn-server=n
CONFIG_PACKAGE_luci-app-ipsec-vpnd=n
EOF
# LuCI主题:
cat >> .config <<EOF
CONFIG_PACKAGE_luci-theme-atmaterial=y
CONFIG_PACKAGE_luci-theme-argon=y
EOF

# 常用软件包:
cat >> .config <<EOF
CONFIG_PACKAGE_curl=y
CONFIG_PACKAGE_htop=y
CONFIG_PACKAGE_nano=y
CONFIG_PACKAGE_screen=y
CONFIG_PACKAGE_tree=y
CONFIG_PACKAGE_vim-fuller=y
CONFIG_PACKAGE_wget=y
CONFIG_PACKAGE_fdisk=y
EOF

# 取消编译VMware镜像以及镜像填充 (不要删除被缩进的注释符号):
cat >> .config <<EOF
# CONFIG_TARGET_IMAGES_PAD is not set
# CONFIG_VMDK_IMAGES is not set
EOF

# 
# ========================固件定制部分结束========================
# 
sed -i 's/^[ \t]*//g' ./.config
make defconfig