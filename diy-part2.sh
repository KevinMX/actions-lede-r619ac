#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# Modify default Hostname
sed -i 's/OpenWrt/MX.G-Dock/g' package/base-files/files/bin/config_generate

#Unblock AcFun in Adbyby
sed -i '/yximg/d' package/lean/luci-app-adbyby-plus/root/etc/init.d/adbyby
sed -i '/yximg/d' package/lean/luci-app-adbyby-plus/root/etc/init.d/adbyby
