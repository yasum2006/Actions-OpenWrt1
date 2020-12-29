# Actions-OpenWrt

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Forks&logo=github)

Build OpenWrt using GitHub Actions

[Read the details in my blog (in Chinese) | 中文教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

SSH 连接到 Actions：通过 tmate 连接到 GitHub Actions 虚拟服务器环境，可直接进行 make menuconfig 操作生成编译配置。复制 SSH 连接命令粘贴到浏览器中打开使用网页终端。（网页终端可能会遇到黑屏的情况，按 Ctrl+C 即可）

cd openwrt && make menuconfig

完成后按Ctrl+D组合键或执行exit命令退出，后续编译工作将自动进行


说明：
基于官方原版openwrt编译，仅仅增加了luci-app-clash,luci-app-openclash,luci-app-zerotier,luci-app-augardhome，luci-app-softethervpn共5个开源插件，极其精简和稳定（20M左右）

默认管理IP地址修改为：192.168.8.1
默认密码为空
