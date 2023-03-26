#!/bin/bash

#默认主机名
sed -i "s/OpenWrt/OpenWRT-$DEVICE_NAME/g" ./package/base-files/files/bin/config_generate
#默认IP地址
sed -i "s/192.168.1.1/192.168.2.1/g" ./package/base-files/files/bin/config_generate
#默认主题
sed -i "s/luci-theme-bootstrap/luci-theme-design/g" ./feeds/luci/collections/luci/Makefile
#默认时间格式
sed -i 's/os.date()/os.date("%Y-%m-%d %H:%M:%S %A")/g' $(find ./package/lean/autocore/files/ -type f -name "index.htm")
