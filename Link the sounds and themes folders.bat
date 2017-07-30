@echo off
setlocal EnableDelayedExpansion
mode con: cols=150
title Linking the Miriani Soundpack Sounds and Themes
timeout /t 1 >nul

pushd "%~dp0"

if not exist "ACV" goto WrongFolder
if not exist "General" goto WrongFolder
if not exist "Ship" goto WrongFolder
if not exist "Themes" goto WrongFolder

if not exist "%tmp%\VIP Mud Miriani folder location.txt" goto PrepareLinking
set /p MirianiFolder=<"%tmp%\VIP Mud Miriani folder location.txt"
if not exist "%MirianiFolder%\Conf.set" goto PrepareLinking

ren "%MirianiFolder%\Conf.set" Conf.set.updating
if exist "%MirianiFolder%\Conf.set" goto WriteError

echo.>>"%MirianiFolder%\Conf.set.updating"
echo #Var Ext {.wav}>>"%MirianiFolder%\Conf.set.updating"
echo #Var RExt {.wav}>>"%MirianiFolder%\Conf.set.updating"
echo #Var SoundsPath {%cd%}>>"%MirianiFolder%\Conf.set.updating"
echo #Var ThemesPath {%cd%\Themes}>>"%MirianiFolder%\Conf.set.updating"

ren "%MirianiFolder%\Conf.set.updating" Conf.set
if not exist "%MirianiFolder%\Conf.set" goto WriteError

echo Done^^! The paths to the Soundpack Sounds and Themes folders have been added to your soundpack configuration.
pause
exit /b 0

:WrongFolder
echo Sorry, it doesn't seem like this linking script is located in the right folder.
echo It is supposed to be located inside the Miriani Soundpack Sounds folder^^!
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
