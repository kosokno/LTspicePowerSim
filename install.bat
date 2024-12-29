@echo off
setlocal

REM Set username variable (using environment variable USERNAME)
set "username=%USERNAME%"

REM Set source directory path (modify this according to your downloaded library path)
set "source_dir=%~dp0sym\PowerSim"

REM Set destination directory path
set "destination_dir=C:\Users\%username%\AppData\Local\LTspice\lib\sym\PowerSim"

REM Check if source directory exists
if not exist "%source_dir%" (
    echo Error: Source directory "%source_dir%" not found.
    pause
    exit /b 1
)

REM Check if destination directory exists (create if it doesn't)
if not exist "%destination_dir%" (
    echo Destination directory "%destination_dir%" does not exist. Creating it...
    mkdir "%destination_dir%"
    if errorlevel 1 (
        echo Error: Failed to create destination directory.
        pause
        exit /b 1
    )
)

REM Copy files (including subfolders)
echo Copying files...
xcopy /s /i /y "%source_dir%" "%destination_dir%"

REM Check copy result
if errorlevel 1 (
    echo Error: Failed to copy files.
    pause
    exit /b 1
) else (
    echo Files copied successfully.
)

pause
endlocal