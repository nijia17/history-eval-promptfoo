@echo off
cd /d "%~dp0"
chcp 936
title 历史人物内容生成 AI 评测

echo ============================================
echo   历史人物内容生成 AI 评测
echo ============================================
echo.

if not exist ".env" (
    echo [!] 未找到 .env 文件，正在从模板创建...
    copy ".env.example" ".env"
    echo.
)

echo   接下来会打开配置文件 .env
echo   请确认 DEEPSEEK_API_KEY 等号后面填的是你的真实 Key
echo   填好后保存，关闭记事本即可。
echo.
pause
start notepad .env
echo.
echo   填好了请按任意键开始评测...
pause

echo.
echo [1/2] 开始评测，约 1-2 分钟，请勿关闭窗口...
echo.
call promptfoo eval

echo.
echo [2/2] 正在打开结果网页...
call promptfoo view

echo.
pause
