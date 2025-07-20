#!/bin/bash
echo "============================="
echo "启动本地HTTP服务器，端口8080..."
echo "============================="

# 自动打开浏览器
if command -v xdg-open >/dev/null 2>&1; then
    xdg-open "http://localhost:8080/pomodoro.html" &
elif command -v open >/dev/null 2>&1; then
    open "http://localhost:8080/pomodoro.html" &
fi

if command -v python >/dev/null 2>&1; then
    python -m http.server 8080
else
    echo "未检测到 Python 3，请先安装 Python 3 并配置环境变量！"
    exit 1
fi