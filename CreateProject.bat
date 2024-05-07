@echo off
echo Welcome To ElectronEase - By Retroboi64
echo.

:prompt_project_name
set /p project_name=Enter the name for your Electron project (no spaces or special characters, except hyphens and underscores): 

if not defined project_name (
    echo You must enter a project name.
    goto :prompt_project_name
)

if not "%project_name%" == "%project_name: =%" (
    echo Project names should not contain spaces. Please try again.
    goto :prompt_project_name
)

echo.
npx create-electron-app "%project_name%"

if errorlevel 1 (
    echo An error occurred while creating the Electron project.
) else (
    echo Successfully created Electron project: "%project_name%"
)

pause
