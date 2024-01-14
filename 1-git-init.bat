@echo off
cd %1
echo.
echo Dit is de:  git-init.bat  
echo.
rem ----------------------------------------------------------------------------
rem create a new repository on the command line
rem echo "# tmp2" >> README.md
rem git init
rem git add README.md
rem git commit -m "first commit"
rem git branch -M main
rem git remote add origin https://github.com/Willem65/tmp2.git
rem git push -u origin main

REM echo "%~dp0"

REM echo %cd%

ping -n 2 127.0.0.1>NUL
git init
ping -n 2 127.0.0.1>NUL
rem git add .
ping -n 2 127.0.0.1>NUL
rem git commit -m "Commit message1"

ping -n 2 127.0.0.1>NUL
git branch -M master


REM set sLongString=%1
REM SET sSubStr="%sLongString:~3%
REM echo LongString : %sLongString%
rem ----------------------------------------------------------------------------


rem ----------------------------------------------------------------------------
rem Dit hieronder filtert de laatste naam uit het directory path 
setlocal enabledelayedexpansion
set "folder=%1"
for %%I in ("%folder%") do (
  set "folderName=%%~nxI"
  for %%A in ("!folderName:_= !") do set "lastName=%%A"
)
echo folderName : %folderName%
echo Last Name: %lastName:"=%
set lastName=%lastName:"=%
echo %lastName%


git remote add origin https://github.com/Willem65/%lastName%.git
rem git push -u origin master
ping -n 4 127.0.0.1>NUL
rem git push origin master


endlocal

