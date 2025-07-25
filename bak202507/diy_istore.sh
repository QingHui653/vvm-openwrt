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
sed -i 's/192.168.100.1/192.168.123.1/g' package/base-files/files/bin/config_generate
