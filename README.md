# Actions-OpenWrt

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Forks&logo=github)

Build OpenWrt using GitHub Actions

[Read the details in my blog (in Chinese) | 中文教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

开启SSH:项目下点击菜单acitons，再左侧点击 "build openwrt",再点击右侧的"run workflow"，弹出的"SSH connection to Actions"中false修改成true即可。

SSH 连接到 Actions：复制 SSH 连接命令到终端运行，或复制网址到浏览器中打开使用网页终端。终端可能会遇到黑屏的情况，按 Ctrl+C 即可。

cd openwrt && make menuconfig

完成后按Ctrl+D组合键或执行exit命令退出，后续编译工作将自动进行。


说明：
基于官方原版openwrt-23.05编译：https://github.com/openwrt/openwrt/tree/openwrt-23.05

仅仅增加了luci-app-openclash,luci-app-passwall,luci-app-ssr-plus(helloworld),luci-app-augardhome,luci-
app-accesscontrol(上网时间控制)，共5个开源插件，极其精简和稳定
（60M左右）

默认管理IP地址为192.168.8.1
默认密码为空

luci-app-adguardhome界面里配置完成，若启动后显示”未运行 未重定向“，是因为编译时没有加入权限。

ssh登录openwrt后台，运行以下命令即可 (说明：AdGuardHome程序直接从github处下载相应版本，并上传至/usr/bin/文件夹)

chmod a+x /usr/bin/AdGuardHome 

chmod 755 /etc/init.d/AdGuardHome && service AdGuardHome restart


官方已编译ipk软件：https://downloads.openwrt.org/releases/packages-23.05/x86_64/packages/
