###openwrt挂载u盘，并将系统转移到u盘中

本文采用的是 [HG255D OpenWrt Chaos Calmer r45323固件](http://pan.baidu.com/s/1hqnHl44)  [相关介绍文档](http://www.right.com.cn/forum/thread-135772-1-1.html)

自带usb支持，ext4支持。（假如不支持USB热插拔，请自行搜索）如
> [【Openwrt 项目开发笔记】：USB挂载& U盘启动（三）](http://www.cnblogs.com/double-win/p/3841801.html)
>[openwrt挂载u盘，并将系统转移到u盘中 ](http://blog.csdn.net/wonengxing/article/details/24270071)

需要注意的是：此固件基于[barrier_breaker/14.07/ramips/rt305x/](http://downloads.openwrt.org/barrier_breaker/14.07/ramips/rt305x/)

自带的block-mount已经集成了block-extroot。在相关的luci界面下【系统->挂载点】即可设置相关的挂载，无需手动修改/etc/config/fstab文件。
