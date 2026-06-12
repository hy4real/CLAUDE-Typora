@echo off
setlocal

cd /d "%~dp0"

echo CLAUDE-Typora release helper
echo.
set /p VERSION=Version number, for example 5.6: 

if "%VERSION%"=="" (
    echo Version cannot be empty.
    pause
    exit /b 1
)

powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0release.ps1" -Version "%VERSION%"

echo.
pause
