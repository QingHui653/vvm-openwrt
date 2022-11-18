#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
pwd
ls -l
echo "开始 DIY 配置"
pwd
ls -l

# 修改默认ip
sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate

#替换使用5.10内核
sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=6.0/g' target/linux/x86/Makefile
sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=6.0/g' target/linux/x86/Makefile

curl -fsSL  https://raw.githubusercontent.com/firkerword/KPR/main/cus_config.yaml > ./package/openwrt-mos/luci-app-mosdns/root/etc/mosdns/cus_config.yaml

# wget https://raw.githubusercontent.com/firkerword/KPR/main/cus_config.yaml -O ./package/openwrt-mos/luci-app-mosdns/root/etc/mosdns/cus_config.yaml
# Modify default IP
# sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
# rm -rf ./feeds/luci/applications/luci-app-qbittorrent
rm -rf ./feeds/luci/applications/luci-app-serverchan
# rm -rf ./package/diy-ziyong/adguardhome
rm -rf ./feeds/packages/net/adguardhome
rm -rf ./feeds/packages/net/smartdns
rm -rf ./feeds/packages/net/mosdns
rm -rf ./feeds/luci/luci-theme-argon
rm -rf ./package/openwrt-passwall/v2ray-geodata
rm -rf ./package/ssr/v2ray-geodata
rm -rf .package/sirpdboy-package/smartdns
rm -rf .package/sirpdboy-package/adguardhome
rm -rf .package/sirpdboy-package/luci-app-dockerman
rm -rf .package/sirpdboy-package/luci-app-autotimeset
# rm -rf ./feeds/packages/net/https-dns-proxy
# svn co https://github.com/Lienol/openwrt-packages/trunk/net/https-dns-proxy feeds/packages/net/https-dns-proxy
# rm -rf feeds/packages/lang/golang
# svn export https://github.com/sbwml/packages_lang_golang/trunk feeds/packages/lang/golang
