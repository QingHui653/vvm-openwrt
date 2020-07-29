# 自定义软件
echo "开始 github Soft 配置"
pwd
ls -l
cd package/lean
pwd
ls -l

#https://github.com/kenzok8/openwrt-packages/
#svn co 复制 仓库下的文件夹 git clone 复制整个仓库

#atmaterial主题
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git
#opentomato主题
svn co https://github.com/solidus1983/luci-theme-opentomato/trunk/luci/themes/luci-theme-opentomato

# passwall 
git clone https://github.com/kenzok8/small.git
# svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-passwall
svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-passwall

# SSR
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-ssr-plus
# svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus

#helloworld
git clone https://github.com/jerrykuku/lua-maxminddb.git
git clone https://github.com/jerrykuku/luci-app-vssr.git  
# rm luci-app-vssr/root/etc/china_ssr.txt
# rm luci-app-vssr/root/etc/config/black.txt
# rm luci-app-vssr/root/etc/config/white.txt
# rm luci-app-vssr/root/etc/dnsmasq.oversea/oversea_list.conf
# rm luci-app-vssr/root/etc/dnsmasq.ssr/ad.conf
# rm luci-app-vssr/root/etc/dnsmasq.ssr/gfw_base.conf
# git clone https://github.com/Leo-Jo-My/my.git
# git clone https://github.com/liuwenwv/luci-app-vssr-plus.git

# openclash
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-openclash
# svn co https://github.com/vernesong/OpenClash/branches/master/luci-app-openclash

# adguardhome  编译问题(https://github.com/rufengsuixing/luci-app-adguardhome/issues/83)
# 暂时先进入 github release 下载 ipk安装
# svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome
# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
svn co https://github.com/rufengsuixing/luci-app-adguardhome/branches/beta/

#KoolProxyR
# git clone https://github.com/jefferymvp/luci-app-koolproxyR.git
# git clone https://github.com/ycg31/luci-app-koolproxyR.git
svn co https://github.com/firker/diy-ziyong/trunk/luci-app-koolproxyR

# 文件管理 无法编译安装 进入github下载ipk手动安装
#git clone https://github.com/lyin888/luci-app-filebrowser.git
git clone https://github.com/MonwF/luci-app-filebrowser.git

# baidupcs-web 删库,等LEDE修复,先使用 此仓库
# rm -rf baidupcs-web
# svn co https://github.com/garypang13/Actions-OpenWrt-Nginx/trunk/common/diy/feeds/custom/luci/baidupcs-web

# 京东签到
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git