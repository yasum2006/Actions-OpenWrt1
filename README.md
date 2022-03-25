# Actions-OpenWrt

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Forks&logo=github)

Build OpenWrt using GitHub Actions

[Read the details in my blog (in Chinese) | 中文教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

开启SSH:项目下点击菜单acitons，再左侧点击”build ...“,再点击右侧的”run workflow“，弹出的”SSH connection to Actions“中false修改成true即可。

SSH 连接到 Actions：复制 SSH 连接命令粘贴到浏览器中打开使用网页终端。网页终端可能会遇到黑屏的情况，按 Ctrl+C 即可。

cd openwrt && make menuconfig

完成后按Ctrl+D组合键或执行exit命令退出，后续编译工作将自动进行。


说明：
基于官方原版openwrt-21.02编译：https://github.com/openwrt/openwrt/tree/openwrt-21.02

仅仅增加了luci-app-openclash,luci-app-passwall,luci-app-ssr-plus(helloworld),luci-app-zerotier,luci-app-augardhome，luci-app-softethervpn,luci-app-accesscontrol(上网时间控制)共7个开源插件，极其精简和稳定（50M左右）。https://github.com/starambler/openwrt-luci

默认管理IP地址为：192.168.8.1
默认密码为空

官方已编译ipk软件：https://downloads.openwrt.org/snapshots/packages/x86_64/packages/ 
