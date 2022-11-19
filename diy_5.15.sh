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
sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.15/g' target/linux/x86/Makefile

#替换使用 5.4内核
#sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.4/g' target/linux/x86/Makefile
#sed -i 's/KERNEL_TESTING_PATCHVER:=5.10/KERNEL_TESTING_PATCHVER:=5.4/g' target/linux/x86/Makefile

curl -fsSL  https://raw.githubusercontent.com/firkerword/KPR/main/cus_config.yaml > ./package/luci-app-mosdns/root/etc/mosdns/cus_config.yaml

rm -rf ./feeds/packages/net/mosdns
cp -r -f ./package/mosdns ./feeds/packages/net/mosdns

