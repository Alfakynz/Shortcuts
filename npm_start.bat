@echo off
set /p userFolder="The user's folder name: "
set /p folderName="The project's folder name: "

cd C:\Users\%userFolder%\Documents\GitHub\%folderName%

npm run start