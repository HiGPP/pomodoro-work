@echo off
chcp 65001 >nul
echo =============================
echo 启动本地HTTP服务器，端口8080...
echo =============================

where python3 >nul 2>nul
if %errorlevel%==0 (
    python3 -m http.server 8080
) else (
    py -3 -m http.server 8080
)

pause 