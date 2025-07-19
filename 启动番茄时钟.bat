@echo off
chcp 65001 >nul
title 番茄工作法追踪器

echo 🍅 番茄工作法追踪器 - 本地服务器
echo ================================================
echo.

:: 检查Python是否安装
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ 错误：未找到Python，请先安装Python 3.7+
    echo 下载地址：https://www.python.org/downloads/
    pause
    exit /b 1
)

:: 检查Flask是否安装
python -c "import flask" >nul 2>&1
if errorlevel 1 (
    echo 📦 正在安装Flask...
    pip install -r requirements.txt
    if errorlevel 1 (
        echo ❌ 安装失败，请检查网络连接
        pause
        exit /b 1
    )
)

:: 检查HTML文件是否存在
if not exist "番茄工作表.html" (
    echo ❌ 错误：未找到番茄工作表.html文件
    echo 请确保文件在当前目录下
    pause
    exit /b 1
)

echo ✅ 环境检查完成
echo 🚀 正在启动服务器...
echo.

:: 启动应用
python app.py

pause 