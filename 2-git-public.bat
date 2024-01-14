echo off
cd %1
echo.
echo Dit is de:  git-public.bat  
echo.
set sLongString=%1
SET sSubStr="%sLongString:~3%
echo LongString : %sLongString%
rem ----------------------------------------------------------------------------
rem create a new repository on the command line
rem echo "# tmp2" >> README.md
rem git init
rem git add README.md
rem git commit -m "first commit"
rem git branch -M main
rem git remote add origin https://github.com/Willem65/tmp2.git
rem git push -u origin main

rem …or push an existing repository from the command line

rem git remote add origin https://github.com/Willem65/tmp2.git
rem git branch -M main
rem git push -u origin main
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
rem I usually just remove all quotes from my variables with:
rem set var=%var:"=%
ping -n 1 127.0.0.1>NUL
rem Dit hieronder geeft de naam van de folder, dus zonder C:\ je houdt dan tmp2 over.
REM echo.
REM set foldername=%foldername:"=%
REM echo %foldername%
REM echo.
echo rem -------------Dit zou moeten werken ---------------------------- 
REM git remote add origin https://github.com/Willem65/%lastName%.git
REM git branch -M master
REM git push -u origin master
rem echo rem ----------------------------------------------------------------
rem echo rem ------------- Anders zou dit moeten werken ---------------------------------
gh.exe repo create %lastName% --public --source=%1  --remote=upstream
rem echo rem ------------------------------------------------------------------------------
ping -n 4 127.0.0.1>NUL

endlocal