@echo off
cd /d "%~dp0"
chcp 65001 >nul
title 历史人物内容生成 AI 评测

echo ============================================
echo   历史人物内容生成 AI 评测
echo ============================================
echo.

if not exist ".env" (
    echo [!] 未找到 .env 文件，正在从模板创建...
    copy ".env.example" ".env" >nul
)

findstr /C:"PUT_YOUR_KEY_HERE" ".env" >nul 2>&1
if %errorlevel% equ 0 (
    echo [!] 检测到你还没有填写 API Key。
    echo.
    echo     接下来会用记事本打开 .env 文件，
    echo     请把 PUT_YOUR_KEY_HERE 替换成你自己的 DeepSeek Key，
    echo     然后保存并关闭记事本。
    echo.
    pause
    notepad .env
    echo.
    echo     填好后按任意键开始评测...
    pause >nul
)

echo [1/2] 开始评测，大约需要 1-2 分钟，请勿关闭窗口...
echo.
call promptfoo eval

echo.
echo [2/2] 正在打开结果网页...
call promptfoo view

echo.
pause
