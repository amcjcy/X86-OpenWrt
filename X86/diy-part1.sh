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
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small-package' >>feeds.conf.default
echo 'src-git fichenx https://github.com/fichenx/openwrt-package' >>feeds.conf.default
echo 'src-git alist https://github.com/sbwml/luci-app-alist' >>feeds.conf.default
git clone https://github.com/bootli/luci-app-v2ray-server.git package/v2ray
git clone  https://github.com/gdy666/luci-app-lucky.git package/lucky
