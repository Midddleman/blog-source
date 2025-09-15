


@echo off
:: �Զ��� Hexo �����ύ & ����ű�
:: ���ߣ�Middleman

:: ���� commit ��Ϣ
set /p msg=�����뱾���ύ������: 

echo.
echo ==========================
echo ��ʼִ�� Git �ύ...
echo ==========================
git add .
git commit -m "%msg%"
git pull origin main --allow-unrelated-histories
git push origin main

echo.
echo ==========================
echo ��ʼִ�� Hexo ����...
echo ==========================
hexo clean
hexo g
hexo d

echo.
echo ==========================
echo ������ɣ�


