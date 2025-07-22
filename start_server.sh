#!/bin/bash

# 默认端口
PORT=8080
HTML_FILE="pomodoro.html"

# 支持自定义端口
if [ ! -z "$1" ]; then
  PORT=$1
fi

# 检查 python3 是否安装
if ! command -v python3 >/dev/null 2>&1; then
  echo "[错误] 未检测到 python3，请先安装 Python3。"
  exit 1
fi

# 检查 HTML 文件是否存在
if [ ! -f "$HTML_FILE" ]; then
  echo "[错误] 未找到 $HTML_FILE 文件，请确认脚本目录正确。"
  exit 1
fi

# 检查端口是否被占用
if lsof -i :$PORT | grep LISTEN >/dev/null 2>&1; then
  echo "[错误] 端口 $PORT 已被占用，请换一个端口或关闭占用程序。"
  exit 1
fi

# 启动服务器
cat <<EOF
=============================
启动本地HTTP服务器，端口 $PORT ...
=============================
EOF

# 自动打开浏览器
URL="http://localhost:$PORT/$HTML_FILE"
if command -v xdg-open >/dev/null 2>&1; then
  xdg-open "$URL" &
elif command -v open >/dev/null 2>&1; then
  open "$URL" &
else
  echo "请手动在浏览器打开: $URL"
fi

python3 -m http.server $PORT