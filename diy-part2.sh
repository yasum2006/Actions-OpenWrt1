#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

#git clone https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone -b master  https://github.com/vernesong/OpenClash.git package/luci-app-openclash
git clone https://github.com/xiaorouji/openwrt-passwall.git  package/passwall

svn co --force https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-zerotier package/luci-app-zerotier && svn revert -R package/luci-app-zerotier
svn co --force https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-softethervpn package/luci-app-softethervpn && svn revert -R package/luci-app-softethervpn
svn co --force https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome package/luci-app-adguardhome && svn revert -R package/luci-app-adguardhome

mkdir -p tools/ucl && wget -P tools/ucl https://raw.githubusercontent.com/coolsnowwolf/lede/master/tools/ucl/Makefile 
mkdir -p tools/upx && wget -P tools/upx https://raw.githubusercontent.com/coolsnowwolf/lede/master/tools/upx/Makefile
#sed  -i '/tools-$(CONFIG_TARGET_orion_generic)/atools-y += ucl upx' tools/Makefile
#sed  -i '/dependencies/a\\$(curdir)/upx/compile := $(curdir)/ucl/compile' tools/Makefile

pushd feeds/packages/lang
rm -rf golang && svn co https://github.com/openwrt/packages/trunk/lang/golang
popd

