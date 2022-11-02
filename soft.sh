# 自定义软件
echo "开始 github Soft 配置"
# openwort 目录下 执行 添加feeds 

pwd
ls -l
cd package/lean
pwd
ls -l

#https://github.com/kenzok8/small-package常用仓库包
git clone https://github.com/kenzok8/small-package

#atmaterial主题
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git

# openclash
# svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
git clone -b dev https://github.com/vernesong/OpenClash.git && cp -r OpenClash/luci-app-openclash ./
