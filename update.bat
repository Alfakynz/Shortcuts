@echo off
echo Mise a jour demandee & echo.
timeout /t 2 >nul /nobreak
winget upgrade --all
echo. & echo Mise a jour effectuee
timeout /t 1 >nul
timeout /t 3