@echo off
echo Welcome To ElectronEase - By Retroboi64
echo.
set /p project_name=Enter the name for your Electron project: 

npx create-electron-app "%project_name%"
