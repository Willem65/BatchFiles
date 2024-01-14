@echo off

cd %1

echo.
echo This is the   upload   git-push.bat
echo.

cd .git

setlocal enabledelayedexpansion

rem hieronder wordt de string uit het bestand config gehaald ( https://github.com/Willem65/PostgresConnectAxum )
for /f "tokens=2 delims== " %%a in ('findstr "url" config') do ( set b=%%a )
set dvar=%b:~0,-4%git
echo %dvar%
echo %dvar%
cd ..



rem setlocal enabledelayedexpansion

rem for /f "tokens=2 delims== " %%a in ('findstr "url" config') do ( set b=%%a )
rem set dvar=%b%

rem cd ..

rem git config --system --unset credential.helper

rem git config --system --add safe.directory %1



rem git init

rem git add .
rem @echo.

rem ----------------------------------------------------------------------------
rem …or push an existing repository from the command line
git add .
ping -n 2 127.0.0.1>NUL
git commit -m "Commit message1"
git remote add origin %dvar%
git branch -M master
git push -u origin master
rem ----------------------------------------------------------------------------

REM git commit -a "Commit push message"
REM @echo.

rem git remote add origin %dvar%

REM git remote -v
REM @echo.
REM git push %1 --force

ping -n 8 127.0.0.1>NUL

endlocal
