@echo off
setlocal EnableExtensions EnableDelayedExpansion

rem devDir MUST end with trailing backslash!
rem The default value %~dp0 contains trailing backslash so no need to add it if you use that default value.
set "devDir=%~dp0"

rem pubDir MUST NOT end with trailing backslash!
set "pubDir="

rem pubZipDir MUST NOT end with trailing backslash!
set "pubZipDir="
set "zipApp=C:\Program Files\7-Zip\7z.exe"
set "tempZipFile=%TEMP%\Miriani Soundpack for VIP Mud.zip"

set "RequiredSoundsVersion=4"
set "ChangelogFile=%devDir%Docs\Changelog.txt"
set "NewCommitsFile=%devDir%New commits.txt"

if not exist "%devDir%Publish.bat" (
 echo Creating a new Publish.bat file.
 copy %0 "%devDir%Publish.bat" >nul
 pause
 exit /b 1
)
if not %0=="%devDir%Publish.bat" (
 echo Please run the file named Publish.bat instead.
 pause
 exit /b 1
)

mode con: cols=120
title Publish a new release
timeout /t 1 >nul

echo What's the new version?
echo Example: 1.2.3
set /p "InputString=Version: "
if "!InputString!"=="" (
 echo Nothing entered. Aborting.
 pause
 exit /b 1
) else (
 set "NewVersion=%InputString%"
)

if exist "!tempZipFile!" del /q "!tempZipFile!"
if exist "!NewCommitsFile!" (
 echo Version !NewVersion!, released %date%:>"%ChangelogFile%.tmp"
 type "%NewCommitsFile%" >>"%ChangelogFile%.tmp"
 del /q "%NewCommitsFile%" >nul
 echo.>>"%ChangelogFile%.tmp"
 type "%ChangelogFile%" >>"%ChangelogFile%.tmp"
 move /y "%ChangelogFile%.tmp" "%ChangelogFile%" >nul
)

echo #Var Version {!NewVersion!}>"%devDir%Scripts\Version.set"
echo #Var RequiredSoundsVersion {!RequiredSoundsVersion!}>>"%devDir%Scripts\Version.set"

if not "%pubDir%"=="" (
 robocopy "%devDir%\" "%pubDir%" /E /PURGE /R:1 /W:10 /NJH /COPY:D /DCOPY:D /XJ /XF .gitignore .npmignore Commit.bat desktop.ini "New commits.txt" Publish.bat Publish.default.bat /XD .git node_modules Proxiani
 if not "%pubZipDir%"=="" (
  call "!zipApp!" a "!tempZipFile!" "!pubDir!" -xr^^!.* -xr^^!desktop.ini -mx5
  del /q "!pubZipDir!\Miriani Soundpack for VIP Mud, version *.zip">nul
  move /y "!tempZipFile!" "!pubZipDir!\Miriani Soundpack for VIP Mud, version !NewVersion!.zip">nul
 )
)

git add .
git commit -m "New release: !NewVersion!"
git push
pause
