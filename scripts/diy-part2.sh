#!/bin/bash
# diy-part2.sh - 编译前脚本第二部分：个性化配置修改
# 用法：此脚本在 feeds 更新后、安装前执行

OPENWRT_DIR=$1

cd $OPENWRT_DIR

# ============================================
# 修改默认 IP 地址（默认是 192.168.1.1）
# ============================================
# 找到 package/base-files/files/bin/config_generate 文件
# 将其中的 192.168.1.1 替换为 192.168.2.1
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# ============================================
# 修改默认主机名
# ============================================
sed -i 's/ImmortalWrt/K2P/g' package/base-files/files/bin/config_generate

# ============================================
# 修改默认时区为上海时区
# ============================================
sed -i "s/'UTC'/'CST-8'/g" package/base-files/files/bin/config_generate

# ============================================
# 如果你有第三方插件需要 git clone，可以在这里添加
# 例如：
# git clone --depth=1 https://github.com/xxx/xxx.git package/xxx
# ============================================

echo "diy-part2.sh 执行完成"
