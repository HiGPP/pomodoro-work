#!/bin/bash

echo "🍅 番茄工作法追踪器 - 本地服务器"
echo "================================================"
echo

# 检查Python是否安装
if ! command -v python3 &> /dev/null; then
    echo "❌ 错误：未找到Python 3，请先安装Python 3.7+"
    echo "Ubuntu/Debian: sudo apt install python3 python3-pip"
    echo "CentOS/RHEL: sudo yum install python3 python3-pip"
    echo "macOS: brew install python3"
    exit 1
fi

# 检查Flask是否安装
if ! python3 -c "import flask" &> /dev/null; then
    echo "📦 正在安装Flask..."
    pip3 install -r requirements.txt
    if [ $? -ne 0 ]; then
        echo "❌ 安装失败，请检查网络连接"
        exit 1
    fi
fi

# 检查HTML文件是否存在
if [ ! -f "番茄工作表.html" ]; then
    echo "❌ 错误：未找到番茄工作表.html文件"
    echo "请确保文件在当前目录下"
    exit 1
fi

echo "✅ 环境检查完成"
echo "🚀 正在启动服务器..."
echo

# 启动应用
python3 app.py 