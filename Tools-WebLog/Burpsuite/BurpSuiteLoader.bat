@echo off
echo     ____                      _____       _ __          __    ____            __
echo    / __ )__  ___________     / ___/__  __(_) /____     / /   / __ \____ _____/ /__  _____
echo   / __  / / / / ___/ __ \    \__ \/ / / / / __/ _ \   / /   / / / / __ `/ __  / _ \/ ___/
echo  / /_/ / /_/ / /  / /_/ /   ___/ / /_/ / / /_/  __/  / /___/ /_/ / /_/ / /_/ /  __/ /
echo /_____/\__,_/_/  / .___/   /____/\__,_/_/\__/\___/  /_____/\____/\__,_/\__,_/\___/_/	
echo.
echo  	΢�Ź��ںţ�������ȫ
echo.
echo  ֪ʶ����:https://t.zsxq.com/mI2zzN7
echo.
echo  ע���˴��ڲ��ɹر� 
echo.
start "burpsuite" /B "javaw.exe" -Xmx8G -XX:-UseParallelGC -noverify -javaagent:BurpSuiteLoader_v2021.8.1.jar -Dfile.encoding=utf-8 -jar "%~dp0burpsuite_pro_v2021.8.1.jar" %*
pause