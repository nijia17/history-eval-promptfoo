@echo off
cd /d "%~dp0"
chcp 65001 >nul
title 查看评测结果

echo ============================================
echo   正在打开评测结果页面...
echo ============================================
echo.
echo   提示：这个脚本只查看结果，不会重新跑评测、不花钱。
echo   如果需要重新跑评测，请双击 run.bat。
echo.

call promptfoo view

echo.
pause
