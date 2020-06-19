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
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone -b master  https://github.com/vernesong/OpenClash.git package/luci-app-openclash

svn co --force https://github.com/coolsnowwolf/lede/trunk/package/lean//luci-app-zerotier package/luci-app-zerotier && svn revert -R package/luci-app-zerotier


