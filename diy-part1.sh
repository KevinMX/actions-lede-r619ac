#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default

#Add helloworld
git clone https://github.com/fw876/helloworld package/helloworld

#Add upstream passwall
git clone -b packages https://github.com/xiaorouji/openwrt-passwall package/passwall_package
git clone -b luci https://github.com/xiaorouji/openwrt-passwall package/passwall

#Add upstream vssr
git clone https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr

#Add openclash
git clone --depth=1 https://github.com/vernesong/OpenClash package/lean/luci-app-openclash

#Add upstream smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns

#Add atmaterial theme
git clone https://github.com/Dawneng/luci-theme-atmaterial package/luci-theme-atmaterial

#Replace argon theme with upstream version
rm -rf package/feeds/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config
