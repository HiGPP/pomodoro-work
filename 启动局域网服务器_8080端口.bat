@echo off
chcp 65001 >nul
title 番茄工作表局域网服务器 (8080端口)

echo.
echo ========================================
echo 🍅 番茄工作表局域网服务器
echo 📱 使用8080端口
echo ========================================
echo.

echo 📁 当前目录: %CD%
echo 🌐 启动局域网服务器...
echo.

echo 📱 手机访问地址:
echo http://192.168.1.52:8080/番茄工作表.html
echo.

echo 📱 手机连接说明:
echo 1. 确保手机和电脑连接同一个WiFi
echo 2. 在手机浏览器中输入: http://192.168.1.52:8080
echo 3. 点击"番茄工作表.html"文件
echo.

echo 🔍 检查Python版本...
python --version
echo.

echo 按任意键启动服务器...
pause >nul

echo 🚀 启动服务器 (8080端口)...
python -m http.server 8080 --bind 0.0.0.0

pause 