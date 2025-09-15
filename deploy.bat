@echo off
:: Auto Hexo blog commit & deploy script
:: Author: Middleman

:: Change to your blog root directory
cd /d E:\blog
echo Current directory: %cd%

:: Input commit message
set /p msg=Please enter commit message: 

echo.
echo ==========================
echo Start Git commit...
echo ==========================
git add .
git commit -m "%msg%"
git pull origin main --allow-unrelated-histories
git push origin main

echo.
echo ==========================
echo Start Hexo deploy...
echo ==========================
hexo clean
hexo g
hexo d

echo.
echo ==========================
echo Deploy finished!
pause
