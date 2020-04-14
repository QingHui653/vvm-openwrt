#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# 自定义软件
cd openwrt/package/libs 
git clone https://github.com/Lienol/openwrt-package/blob/master/lienol/luci-app-passwall
git clone https://github.com/Lienol/openwrt/blob/dev-19.07/package/diy/frp/