@echo off
for /F "" %%I in ('reg query "HKEY_USERS"') do (reg add "%%I\Control Panel\Keyboard" /v InitialKeyboardIndicators /t REG_SZ /d 2 /f)
pause 