@echo off
setlocal enabledelayedexpansion

cd /d "%~dp0"

for /f "delims=" %%i in ('dir /b /ad /o-n php-* 2^>nul') do (
    set "phpfolder=%%i"
    goto :found
)

:found
if not defined phpfolder (
    echo No PHP folder found matching php-*
    pause
    exit /b
)

if "%~1"=="" (
    echo Drag and drop a folder onto this batch file
    pause
    exit /b
)

"%phpfolder%\php.exe" -S localhost:8000 -t "%~1"
