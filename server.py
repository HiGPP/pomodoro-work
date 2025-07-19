#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
局域网番茄工作表服务器
支持手机和电脑同时访问
"""

import http.server
import socketserver
import webbrowser
import os
import sys
import socket
from pathlib import Path

def get_local_ip():
    """获取本机局域网IP地址"""
    try:
        # 创建一个UDP套接字
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        # 连接一个外部地址（不需要真实连接）
        s.connect(("8.8.8.8", 80))
        ip = s.getsockname()[0]
        s.close()
        return ip
    except Exception:
        return "127.0.0.1"

def create_network_server(port=8000):
    """创建支持局域网访问的HTTP服务器"""
    
    # 获取当前目录
    current_dir = Path.cwd()
    os.chdir(current_dir)
    
    # 获取本机IP地址
    local_ip = get_local_ip()
    
    # 创建HTTP服务器，监听所有网络接口
    handler = http.server.SimpleHTTPRequestHandler
    
    try:
        with socketserver.TCPServer(("0.0.0.0", port), handler) as httpd:
            print("=" * 50)
            print("🍅 番茄工作表局域网服务器")
            print("=" * 50)
            print(f"📁 服务目录: {current_dir}")
            print(f"🌐 服务器地址: 0.0.0.0:{port}")
            print(f"💻 本机访问: http://localhost:{port}")
            print(f"📱 手机访问: http://{local_ip}:{port}")
            print(f"📄 HTML文件: http://{local_ip}:{port}/番茄工作表.html")
            print("\n📱 手机连接说明:")
            print(f"1. 确保手机和电脑在同一个WiFi网络")
            print(f"2. 在手机浏览器中输入: http://{local_ip}:{port}")
            print(f"3. 或者直接访问: http://{local_ip}:{port}/番茄工作表.html")
            print("\n⚠️  注意事项:")
            print("• 如果无法访问，请检查防火墙设置")
            print("• 确保手机和电脑连接同一个WiFi")
            print("• 某些公共WiFi可能限制设备间通信")
            print("\n按 Ctrl+C 停止服务器")
            print("=" * 50)
            
            # 自动打开浏览器
            webbrowser.open(f"http://localhost:{port}/番茄工作表.html")
            
            # 启动服务器
            httpd.serve_forever()
            
    except OSError as e:
        if "Address already in use" in str(e):
            print(f"❌ 端口 {port} 已被占用，尝试使用端口 {port + 1}")
            create_network_server(port + 1)
        else:
            print(f"❌ 启动服务器失败: {e}")
            print("💡 可能的原因:")
            print("• 端口被其他程序占用")
            print("• 防火墙阻止了端口访问")
            print("• 权限不足")
    except KeyboardInterrupt:
        print("\n🛑 服务器已停止")
    except Exception as e:
        print(f"❌ 服务器错误: {e}")

if __name__ == "__main__":
    create_network_server() 