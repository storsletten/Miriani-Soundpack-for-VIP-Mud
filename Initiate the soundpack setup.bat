@echo off
setlocal EnableExtensions EnableDelayedExpansion
mode con: cols=150
title Installation of the Miriani Soundpack for VIP Mud
timeout /t 1 >nul

pushd "%~dp0"

if not exist Miriani.set goto LookForMirianiFolder

:BeginInstallation
if exist "Miriani.old.set" del /q Miriani.old.set
ren Miriani.set Miriani.old.set
if exist Miriani.set goto ErrorWriting

if not exist Conf.set echo.>Conf.set
if not exist Custom.set echo.>Custom.set
if not exist Variables.set echo #Var PreservedVariables {}>Variables.set

echo #Load {%%CharInfo(MudName)/Conf.set}>Miriani.set
echo #If {%%Defined(ScriptPath)=1 and %%Defined(SoundsPath)=1} {>>Miriani.set
echo  #Load {@ScriptPath/Main.set}>>Miriani.set
echo } {>>Miriani.set
echo  #Say {Soundpack error^^! The scripts and/or the sounds have not been linked yet. Please see the installation instructions for information about how to link those folders.}>>Miriani.set
echo }>>Miriani.set

if not exist Miriani.set goto ErrorWriting

echo %cd%>"%tmp%\VIP Mud Miriani folder location.txt"

if defined RunAfterInstall (
 echo Great^^! Now attempting to link the scripts folder...
 call "%RunAfterInstall%"
) else (
 echo Great^^! You are now ready to link the scripts and the sounds folders^^!
 echo Please see the installation instructions for more information.
 pause
)
exit /b 0

:ErrorWriting
echo Error: Can't seem to write files here. Try to run this script as administrator.
pause
exit /b 1

:LookForMirianiFolder
if defined ProgramFiles(x86) (
 set "ProgFilesX86=%ProgramFiles(x86)%"
) else (
 set "ProgFilesX86=%ProgramFiles%"
)

if exist "%ProgFilesX86%\VIPMud 2.0" (
 if exist "%UserProfile%\Documents\VIP Mud\Miriani\Miriani.set" (
  echo VIP Mud 2.0 installation detected.
  choice /c yn /n /m "Would you like to install the Miriani soundpack for VIP Mud 2.0 now? [Y/N]"
  if !errorlevel!==1 (
   cls
   set "RunAfterInstall=%cd%\Link the scripts for VIP Mud 2.0.bat"
   pushd "%UserProfile%\Documents\VIP Mud\Miriani"
   goto BeginInstallation
  )
  cls
 )
)

if exist "%ProgFilesX86%\VipMud" (
 if exist "%ProgFilesX86%\VipMud\Miriani\Miriani.set" (
  echo VIP Mud 1.1 installation detected.
  choice /c yn /n /m "Would you like to install the Miriani soundpack for VIP Mud 1.1 now? [Y/N]"
  if !errorlevel!==1 (
   cls
   set "RunAfterInstall=%cd%\Link the scripts for VIP Mud 1.1.bat"
   pushd "%ProgFilesX86%\VipMud\Miriani"
   goto BeginInstallation
  )
  cls
 )
)

echo To install the soundpack, you'll need to copy this installation script into the Miriani folder that should be located inside your VIP Mud folder.
echo For VIP Mud 1.1, this is typically located in Program Files (x86).
echo For VIP Mud 2.0, the VIP Mud data folder is located in your Documents folder by default.
echo Please see the installation instructions for more information.
pause
exit /b 2
