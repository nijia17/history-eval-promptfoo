@echo off
cd /d "%~dp0"
chcp 936
title 查看评测结果

echo ============================================
echo   正在打开评测结果页面...
echo ============================================
echo.
echo   提示：本脚本只查看结果，不会重新跑评测、不花钱。
echo   如需重新评测，请双击 run.bat。
echo.
echo   如果提示 "Port 15500 is already in use"，
echo   说明结果页面已经开着了，直接用浏览器访问：
echo   http://localhost:15500
echo.

call promptfoo view

echo.
pause
