# 自定义软件
echo "开始 github Soft 配置"
#位于 /home/runner/work/vvm-openwrt/vvm-openwrt/openwrt/
# openwort 目录下 执行 添加feeds 

mkdir softlocal
cd softlocal
pwd


# openclash
# svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
## svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash/tools/po2lmo
## git clone -b dev https://github.com/vernesong/OpenClash.git && cp -r OpenClash/luci-app-openclash ./

git clone https://github.com/vernesong/OpenClash.git && cp -r OpenClash/luci-app-openclash /home/runner/work/vvm-openwrt/vvm-openwrt/openwrt/package
# openwrt-packages
git clone https://github.com/kenzok8/openwrt-packages.git

#依赖
# svn co https://github.com/kenzok8/openwrt-packages/trunk/lua-neturl
# svn co https://github.com/kenzok8/openwrt-packages/trunk/gost
# svn co https://github.com/kenzok8/openwrt-packages/trunk/lua-maxminddb
# svn co https://github.com/kenzok8/openwrt-packages/trunk/microsocks
# svn co https://github.com/kenzok8/openwrt-packages/trunk/mosdns
# svn co https://github.com/kenzok8/openwrt-packages/trunk/naiveproxy
# svn co https://github.com/kenzok8/openwrt-packages/trunk/redsocks2
# svn co https://github.com/kenzok8/openwrt-packages/trunk/sagernet-core
# svn co https://github.com/kenzok8/openwrt-packages/trunk/smartdns
# svn co https://github.com/kenzok8/openwrt-packages/trunk/taskd
# svn co https://github.com/kenzok8/openwrt-packages/trunk/tcping
# svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-ssr-plus


## svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-passwall2
## svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-ikoolproxy

# svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-mcat
# svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-tomato

# adguardhome
# svn co https://github.com/rufengsuixing/luci-app-adguardhome/branches/beta/


cd /home/runner/work/vvm-openwrt/vvm-openwrt/openwrt/package
pwd
#https://github.com/kenzok8/small-package常用仓库包
# git clone https://github.com/kenzok8/small-package
# 无法全部拉取,会导致编译超过6h
# git clone https://github.com/kenzok8/openwrt-packages

git clone https://github.com/kenzok8/small

#atmaterial主题
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git

#mosdns v4 版本
# rm -rf mosdns && git clone https://github.com/IrineSistiana/mosdns/ -b v4

#alist 各种网盘
git clone https://github.com/sbwml/luci-app-alist