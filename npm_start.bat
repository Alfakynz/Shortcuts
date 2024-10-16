@echo off
:loop
echo The final path will be C:\Users\%%userFolder%%\Documents\GitHub\%%folderName%% & echo.

set /p userFolder="The user's folder name: "
set userFolderPath=C:\Users\%userFolder%

if not exist "%userFolderPath%" goto error

set /p folderName="The project's folder name: "
set folderPath=C:\Users\%userFolder%\Documents\GitHub\%folderName%

if not exist "%folderPath%" goto error

cd /d "%folderPath%"
npm run start
exit /b

:error
echo.
echo The specified path does not exist: %folderPath%
echo Please enter the correct folder names.
timeout /t 3 >nul
cls
goto loop