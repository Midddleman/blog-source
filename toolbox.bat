@echo off
:menu
cls
echo.
echo ��ѡ��Ҫִ�еĲ�����
echo 1. hexo clean g s
echo 2. hexo clean g d
echo 3. git add . ^&^& git commit -m "update" ^&^& git push
echo 0. �˳�
echo.

set /p choice=���������ֲ��س�: 

if "%choice%"=="1" (
    hexo clean && hexo g
    start "Hexo Server" cmd /k "hexo s"
    echo Hexo ���ط����������´���������
    timeout /t 2 /nobreak >nul
) else if "%choice%"=="2" (
    hexo clean && hexo g && hexo d
) else if "%choice%"=="3" (
    git add .
    set /p msg=������ commit ����: 
    git commit -m "%msg%"
    git push
) else if "%choice%"=="0" (
    exit
) else (
    echo ��Ч��ѡ�
)
echo.
pause
goto menu
