# 自定义软件
echo "开始 github Soft 配置"
pwd
ls -l
cd package/lean
pwd
ls -l
# git clone https://github.com/Lienol/openwrt-package/blob/master/lienol/luci-app-passwall
# git clone https://github.com/Lienol/openwrt/blob/dev-19.07/package/diy/frp/

#svn co 复制 仓库下的文件夹 git clone 复制整个仓库

#atmaterial主题
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git
#opentomato主题
svn co https://github.com/solidus1983/luci-theme-opentomato/trunk/luci/themes/luci-theme-opentomato
# passwall 
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-passwall
# openclash
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-openclash
# adguardhome
git clone https://github.com/garypang13/openwrt-adguardhome
