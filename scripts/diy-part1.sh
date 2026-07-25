#!/bin/bash
# diy-part1.sh - 编译前脚本第一部分：添加第三方软件源
# 用法：此脚本在更新 feeds 之前执行

# 接收源码目录作为参数
OPENWRT_DIR=$1

# 进入 ImmortalWrt 源码目录
cd $OPENWRT_DIR

# ============================================
# 添加第三方 feeds（插件源）
# ============================================

# 示例1：添加 helloworld 库（包含“师夷长技”等插件）
# echo 'src-git helloworld https://github.com/fw876/helloworld.git' >> feeds.conf.default

# 示例2：添加 lienol 库（包含 passwall 等插件）
# echo 'src-git lienol https://github.com/Lienol/openwrt-package.git' >> feeds.conf.default

# 示例3：添加 kiddin9 库（大量常用插件合集）
# echo 'src-git kiddin9 https://github.com/kiddin9/openwrt-packages.git' >> feeds.conf.default

# ============================================
# 如果你不需要第三方插件，此文件可以留空
# 但文件必须存在，否则工作流会报错
# ============================================

echo "diy-part1.sh 执行完成"
