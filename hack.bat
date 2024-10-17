@echo off

set "nircmd_path=C:\Windows\nircmd.exe"

IF EXIST "%nircmd_path%" (
    %nircmd_path% sendkeypress alt+enter
)

color a
cd C:\

echo Preparing hack...
timeout /t 3 >nul /nobreak
echo Hacking in progress... & echo.
timeout /t 1 >nul /nobreak
dir /s
echo. & echo Hack is ending...
timeout /t 1 >nul
timeout /t 3