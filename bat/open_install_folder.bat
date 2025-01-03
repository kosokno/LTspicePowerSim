@echo off
setlocal

REM Set the target directory path. Uses the %username% environment variable.
set "target_dir=C:\Users\%username%\AppData\Local\LTspice\lib\sym\PowerSim"

REM Check if the target directory exists
if exist "%target_dir%\" (
    echo Opening folder: "%target_dir%"
    explorer "%target_dir%"
    goto :end
)

echo Folder "%target_dir%" does not exist. Trying parent folders...

:find_parent
REM Get the parent directory
for %%a in ("%target_dir%") do (
    set "parent_dir=%%~dpa"
)

REM Check if the parent directory is the root directory
if "%parent_dir%"=="%target_dir%" (
    echo Error: Could not find any existing parent folder.
    goto :end
)

REM Check if the parent directory exists
if exist "%parent_dir%\" (
    echo Opening parent folder: "%parent_dir%"
    explorer "%parent_dir%"
    goto :end
)

REM If the parent directory doesn't exist, go up one more level
set "target_dir=%parent_dir:~0,-1%" REM Remove the trailing backslash
goto :find_parent

:end
endlocal