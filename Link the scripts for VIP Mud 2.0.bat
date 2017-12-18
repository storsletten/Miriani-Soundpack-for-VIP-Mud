@echo off
setlocal EnableDelayedExpansion
mode con: cols=150
title Linking the scripts for VIP Mud 2.0
timeout /t 1 >nul

pushd "%~dp0"

if not exist "Docs" goto WrongFolder
if not exist "Scripts" goto WrongFolder

if not exist "%tmp%\VIP Mud Miriani folder location.txt" goto PrepareLinking
set /p MirianiFolder=<"%tmp%\VIP Mud Miriani folder location.txt"
if not exist "%MirianiFolder%\Conf.set" goto PrepareLinking

ren "%MirianiFolder%\Conf.set" Conf.set.updating
if exist "%MirianiFolder%\Conf.set" goto WriteError

echo.>>"%MirianiFolder%\Conf.set.updating"
echo #Var ScriptPath {%cd:@=~@%\Scripts}>>"%MirianiFolder%\Conf.set.updating"

ren "%MirianiFolder%\Conf.set.updating" Conf.set
if not exist "%MirianiFolder%\Conf.set" goto WriteError

echo Done^^! The path to the soundpack scripts for VIP Mud 2.0 has been added to your soundpack configuration.
pause
exit /b 0

:WrongFolder
echo Sorry, it doesn't seem like this linking script is located in the right folder.
echo It is supposed to live inside the folder named Miriani Soundpack for VIP Mud.
pause
exit /b 1

:PrepareLinking
echo You need to run Install.bat first.
echo Please see the installation instructions for more information.
pause
exit /b 2

:WriteError
echo Error: Can't seem to update the Conf.set file. Try running this script as administrator.
pause
exit /b 3
