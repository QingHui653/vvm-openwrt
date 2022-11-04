# 自定义软件
echo "开始 github Soft 配置"
# openwort 目录下 执行 添加feeds 

pwd
ls -l
cd package/lean
pwd
ls -l

#https://github.com/kenzok8/small-package常用仓库包
# git clone https://github.com/kenzok8/small-package
# 无法全部拉取,会导致编译超过6h
# git clone https://github.com/kenzok8/openwrt-packages

git clone https://github.com/kenzok8/small
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-ssr-plus
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-passwall2

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-ikoolproxy
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-atmaterial_new

# adguardhome
svn co https://github.com/rufengsuixing/luci-app-adguardhome/branches/beta/

#atmaterial主题
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git

# openclash
# svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
git clone -b dev https://github.com/vernesong/OpenClash.git && cp -r OpenClash/luci-app-openclash ./
