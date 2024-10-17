@echo off
:loop
echo The final path will be %USERPROFILE%\Documents\GitHub\%%folderName%% & echo.

set /p folderName="The project's folder name: "
set folderPath=%USERPROFILE%\Documents\GitHub\%folderName%
if not exist "%folderPath%" goto error
cd /d "%folderPath%"

set /p projectPort="The project's port: "

start http://localhost:%projectPort%
npm run start
exit /b

:error
echo.
echo The specified path does not exist: %folderPath%
echo Please enter the correct folder names.
timeout /t 3 >nul
cls
goto loop