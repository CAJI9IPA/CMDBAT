net stop spooler /y
del /f /s /q /a "%windir%\system32\spool\printers\*.*"
net start spooler
