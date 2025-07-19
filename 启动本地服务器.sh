#!/bin/bash

echo "============================="
echo "启动本地HTTP服务器，端口8080..."
echo "============================="

if command -v python3 >/dev/null 2>&1; then
    python3 -m http.server 8080
else
    python -m http.server 8080
fi 