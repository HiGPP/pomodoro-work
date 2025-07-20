@echo off
chcp 65001 >nul
echo =============================
echo 启动本地HTTP服务器，端口8080...
echo =============================

start "" http://localhost:8080/pomodoro.html

where python3 >nul 2>nul
if %errorlevel%==0 (
    python3 -m http.server 8080
) else (
    where py >nul 2>nul
    if %errorlevel%==0 (
        py -3 -m http.server 8080
    ) else (
        echo 未检测到 Python 3，请先安装 Python 3 并配置环境变量！
        pause
        exit /b
    )
)

pause