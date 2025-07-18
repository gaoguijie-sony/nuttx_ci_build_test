#!/bin/bash

# 检查当前目录下是否存在 throughput 目录，不存在则创建
if [ ! -d "throughput" ]; then
    mkdir throughput
fi

# 循环检查 throughput 目录下是否存在文件
while true; do
    if [ -n "$(ls -A throughput)" ]; then
        break
    fi
    sleep 1
done

echo "throughput 目录下已存在文件，脚本退出。"
