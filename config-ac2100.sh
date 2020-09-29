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
CONFIG_TARGET_ramips_mt7621_DEVICE_xiaomi_redmi-router-ac2100=y
EOF
# 固件压缩:
cat >> .config <<EOF
CONFIG_TARGET_ROOTFS_TARGZ=y
CONFIG_TARGET_ROOTFS_SQUASHFS=y
CONFIG_TARGET_KERNEL_PARTSIZE=64
CONFIG_TARGET_ROOTFS_PARTSIZE=1000
EOF


# IPv6支持:
cat >> .config <<EOF
CONFIG_IPV6=y
CONFIG_PACKAGE_dnsmasq-full=y
CONFIG_PACKAGE_dnsmasq_full_dhcp=y
CONFIG_PACKAGE_dnsmasq_full_dhcpv6=y
EOF
# 多文件系统支持:
cat >> .config <<EOF

EOF
# USB3.0支持:
cat >> .config <<EOF

EOF

# 无线驱动:
cat >> .config <<EOF
CONFIG_DEFAULT_kmod-mt7603e=y
CONFIG_DEFAULT_kmod-mt7615d=y
CONFIG_DEFAULT_luci-app-mtwifi=y
EOF

# 常用LuCI插件选择:
cat >> .config <<EOF

CONFIG_PACKAGE_luci-app-adbyby-plus=y

CONFIG_PACKAGE_luci-app-ssr-plus=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_V2ray=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_V2ray_plugin=y

CONFIG_PACKAGE_luci-app-syncdial=y

CONFIG_PACKAGE_luci-app-flowoffload=y

EOF
# 取消默认插件
cat >> .config <<EOF
CONFIG_PACKAGE_luci-app-music-remote-center=n
CONFIG_PACKAGE_luci-app-airplay2=n
CONFIG_PACKAGE_luci-app-vsftpd=n

CONFIG_PACKAGE_luci-app-ddns=n
CONFIG_PACKAGE_luci-app-xlnetacc=n
CONFIG_PACKAGE_luci-app-wol=n

CONFIG_PACKAGE_luci-app-zerotier=n
CONFIG_PACKAGE_luci-app-openvpn-server=n
CONFIG_PACKAGE_luci-app-ipsec-vpnd=n
EOF
# LuCI主题:
cat >> .config <<EOF
CONFIG_PACKAGE_luci-theme-atmaterial=y
EOF

# 常用软件包:
cat >> .config <<EOF
CONFIG_PACKAGE_bash=y
CONFIG_PACKAGE_curl=y
CONFIG_PACKAGE_nano=y
CONFIG_PACKAGE_wget=y
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