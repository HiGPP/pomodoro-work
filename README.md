# 🍅 Pomodoro Tracker

## 📦 Project Overview

This is a browser-based Pomodoro Technique tracker designed for efficient time management. It supports multi-device access, persistent local storage, task synchronization, Markdown/JSON export, and more. Ideal for both personal and team productivity.

---

## 🚀 Quick Start

### For Windows Users

1. Double-click `start_server.bat` (Start Local Server)
2. Open your browser and visit:
   - Local: http://localhost:8080/pomodoro.html
   - LAN:   http://<your-computer-ip>:8080/pomodoro.html

### For Mac/Linux Users

1. Open a terminal and navigate to the project directory
2. Grant execute permission (first time only):
   ```bash
   chmod +x start_server.sh
   ```
3. Run the script:
   ```bash
   ./start_server.sh
   ```
4. Open your browser and visit as above

---

## 📁 Main Files

| Filename           | Description                        |
|--------------------|------------------------------------|
| pomodoro.html      | Main application page               |
| start_server.bat   | Windows one-click start script      |
| start_server.sh    | Mac/Linux one-click start script    |
| 完整示例数据.md     | Sample data and format reference    |
| 手机访问说明_8080端口.txt | Mobile/LAN access instructions      |

---

## 🖥️ Requirements

- **Python 3** (for local HTTP server, 3.6+ recommended)
- Modern browser (Chrome, Edge, Firefox, Safari, etc.)

> No third-party dependencies required. No Node.js or Flask needed.

---

## 📱 Mobile & Multi-Device Access

1. Start the local server and ensure your phone and computer are on the same WiFi network.
2. On your phone, open the browser and visit your computer's IP + port (e.g., http://192.168.1.100:8080/pomodoro.html).
3. See `手机访问说明_8080端口.txt` for details.

---

## 📝 Features

- **Pomodoro timer and statistics**
- **Task management & synchronization** (status, completion, checkbox auto-link)
- **Daily summary & planning**
- **Auto-save & restore**
- **Markdown/JSON export & import**
- **Fullscreen/Desktop/Sound/Vibration notifications**
- **Responsive UI for all devices**

---

## 💾 Data Management

- **Auto-save**: All inputs are saved locally, valid for 24 hours
- **Manual backup/restore**: One-click JSON file backup and restore
- **Markdown export**: One-click copy as Markdown for easy sharing
- **Task sync**: Status, completion, and checkboxes are auto-linked

---

## 🛠️ FAQ

- **Port in use**: If port 8080 is occupied, edit the script to change the port
- **Python version error**: If you see `No module named http`, make sure you are using Python 3
- **Cannot access**: Check firewall, network, and IP address

---

## 📊 Sample Data

See `完整示例数据.md` for a complete example including tasks, Pomodoro sessions, and summaries.

---

## 🏷️ Notes

- This is a pure front-end app; all data is stored locally in your browser and never uploaded.
- Supports multi-device access (e.g., phone + computer), but data does not sync automatically between devices.
- For advanced backend features, feel free to extend the project.

---

## ✨ Enjoy a focused and productive day!

---

For further help or suggestions, feel free to open an issue or contribute!