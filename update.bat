@echo off

echo Update requested & echo.
timeout /t 2 >nul /nobreak
winget upgrade --all
echo. & echo Update completed
timeout /t 1 >nul
timeout /t 3