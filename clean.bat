@echo off
setlocal

REM Set username variable (using environment variable USERNAME)
set "username=%USERNAME%"

REM Set destination directory path
set "destination_dir=C:\Users\%username%\AppData\Local\LTspice\lib\sym\PowerSim"

REM Check if destination directory exists
if not exist "%destination_dir%" (
    echo Destination directory "%destination_dir%" does not exist. Nothing to delete.
    pause
    exit /b 0
)

REM Confirm deletion with user
choice /c YN /m "Are you sure you want to delete all files in '%destination_dir%'? (Y/N): "
if errorlevel 2 goto :end

REM Delete files and directory
echo Deleting files and directory...
rmdir /s /q "%destination_dir%"

REM Check deletion result
if errorlevel 1 (
    echo Error: Failed to delete directory.
    pause
    exit /b 1
) else (
    echo Directory deleted successfully.
)

:end
pause
endlocal