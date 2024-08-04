# 自定义软件
echo "开始 github Soft 配置"
#位于 /home/runner/work/vvm-openwrt/vvm-openwrt/openwrt/
# openwort 目录下 执行 添加feeds 

# 使用 https://github.com/stupidloud/nanopi-openwrt/blob/master/scripts/merge_packages.sh 重新下载

echo >> feeds.conf.default
echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default

pwd
ls -l
cd package
pwd
ls -l


git clone https://github.com/kenzok8/small
# git clone https://github.com/sbwml/luci-app-alist

# theme
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git

# eqosplus 网速控制更多功能 
# https://github.com/sirpdboy/luci-app-eqosplus

function merge_package(){
    # 参数1是分支名,参数2是库地址。所有文件下载到openwrt/package/openwrt-packages路径。
    # 同一个仓库下载多个文件夹直接在后面跟文件名或路径，空格分开。
    trap 'rm -rf "$tmpdir"' EXIT
    branch="$1" curl="$2" && shift 2
    rootdir="$PWD"
    localdir=package/openwrt-packages
    [ -d "$localdir" ] || mkdir -p "$localdir"
    tmpdir="$(mktemp -d)" || exit 1
    git clone -b "$branch" --depth 1 --filter=blob:none --sparse "$curl" "$tmpdir"
    cd "$tmpdir"
    git sparse-checkout init --cone
    git sparse-checkout set "$@"
    mv -f "$@" "$rootdir"/"$localdir" && cd "$rootdir"
}

merge_package master https://github.com/WYC-2020/openwrt-packages luci-app-openclash


cd package/openwrt-packages

ls -l
