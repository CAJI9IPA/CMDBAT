@echo off
mkdir C:\Temp
netsh interface show interface | find "������祭" > C:\Temp\GetIfaceLongName 
for /F "tokens=4*" %%I in (C:\Temp\GetIfaceLongName) do (echo %%I %%J> C:\Temp\GetIfaceName)
for /f "usebackq tokens=*" %%a in (C:\Temp\GetIfaceName) do (set IfaceName=%%~a)
If "%IfaceName:~-1%"==" " Set IfaceName=%IfaceName:~0,-1%
echo ����䥩� "%IfaceName%" �㤥� ��१���㦥�
netsh interface set interface "%IfaceName%" admin=disabled
echo ����䥩� �몫�祭
timeout 5
netsh interface set interface "%IfaceName%" admin=enabled
echo ����䥩� ����祭
pause


