@echo off
chcp 65001 > nul
echo ========================
echo 开始一键启动 Ollama + 后端 + 前端
echo ========================

:: 1. 启动Ollama服务（后台运行，不弹窗）
echo [1/3] 启动Ollama服务...
start "" /b ollama serve
:: 用 ping 代替 timeout，兼容性更好（等待约5秒）
ping -n 6 127.0.0.1 > nul

:: 2. 启动蕉幻后端（用绝对路径，cd /d 切换盘符+目录）
echo [2/3] 启动蕉幻后端...
start "后端服务" cmd /k "cd /d E:\AI\banana-slides\backend && uv run python app.py"

:: 3. 启动蕉幻前端
echo [3/3] 启动蕉幻前端...
start "前端服务" cmd /k "cd /d E:\AI\banana-slides\frontend && npm run dev"

echo ========================
echo 服务启动完成！
echo 请先手动启动 SD WebUI 整合包，再访问前端：http://localhost:3000
echo 关闭时直接关闭所有CMD窗口即可
echo ========================
pause