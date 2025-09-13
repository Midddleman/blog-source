@echo off
:: 自动化 Hexo 博客提交 & 部署脚本
:: 作者：Middleman

:: 输入 commit 信息
set /p msg=请输入本次提交的描述: 

echo.
echo ==========================
echo 开始执行 Git 提交...
echo ==========================
git add .
git commit -m "%msg%"
git pull origin main --allow-unrelated-histories
git push origin main

echo.
echo ==========================
echo 开始执行 Hexo 部署...
echo ==========================
hexo clean
hexo g
hexo d

echo.
echo ==========================
echo 部署完成！
cmd /k

