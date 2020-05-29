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
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-passwall
# SSR
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-ssr-plus
#helloworld
# https://github.com/fw876/helloworld
git clone https://github.com/jerrykuku/lua-maxminddb.git
git clone https://github.com/jerrykuku/luci-app-vssr.git  
rm luci-app-vssr/root/etc/china_ssr.txt
rm luci-app-vssr/root/etc/config/black.txt
rm luci-app-vssr/root/etc/config/white.txt
rm luci-app-vssr/root/etc/dnsmasq.oversea/oversea_list.conf
rm luci-app-vssr/root/etc/dnsmasq.ssr/ad.conf
rm luci-app-vssr/root/etc/dnsmasq.ssr/gfw_base.conf
# openclash
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-openclash
# adguardhome
# git clone https://github.com/garypang13/openwrt-adguardhome
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome
