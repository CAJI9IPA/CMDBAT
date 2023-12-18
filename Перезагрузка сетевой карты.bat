@echo off
mkdir C:\Temp
netsh interface show interface | find "Подключен" > C:\Temp\GetIfaceLongName 
for /F "tokens=4*" %%I in (C:\Temp\GetIfaceLongName) do (echo %%I %%J> C:\Temp\GetIfaceName)
for /f "usebackq tokens=*" %%a in (C:\Temp\GetIfaceName) do (set IfaceName=%%~a)
If "%IfaceName:~-1%"==" " Set IfaceName=%IfaceName:~0,-1%
echo Интерфейс "%IfaceName%" будет перезагружен
netsh interface set interface "%IfaceName%" admin=disabled
echo Интерфейс выключен
timeout 5
netsh interface set interface "%IfaceName%" admin=enabled
echo Интерфейс включен
pause


