@echo off
:: Check for administrator rights
openfiles >nul 2>&1 || (
    echo 请使用管理员权限运行此脚本。
    pause
    exit /b
)

echo 正在通过 KMS 激活你的 Windows 系统!
echo 本脚本编写：github.com/auula
echo 请耐心等待...
pause

slmgr /skms kms.jihuowin.com && slmgr /ato

echo 激活过程完成。
pause

