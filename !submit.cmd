@echo off
@setlocal enableextensions enabledelayedexpansion
color a & title ^^!submit bug
echo:  & echo =================================================================================== & echo:
set /p desc=Describe the bug in a sentence.
echo:  & echo =================================================================================== & echo:



:st
for /L %n in (0,1,15) do @echo Step %n
set /p %n%=Describe the procedure. Input ^\ to finish.

if NOT %step%==\ goto :st
//if /i

//!submit sentence | Steps to Reproduce: - step1 - step2 Expected Result: this Actual Result: that Client Settings: ver x.x.x System Settings: settings


echo:  & echo =================================================================================== & echo:
set /p exp=What should happen when/if the bug doesnt occur?

echo:  & echo =================================================================================== & echo:
set /p act=What actually happens when you follow the steps for reproduction?
echo:  & echo =================================================================================== & echo: & echo C - Canary & echo T - TestFlight & echo S - Stable & echo A - Alpha & echo 
set /p cli=Enter your Discord indev version. 
if /i "%cli%" EQU "C" set "cli=Canary"
if /i "%cli%" EQU "T" set "cli=TestFlight"
if /i "%cli%" EQU "S" set "cli=Stable"
if /i "%cli%" EQU "A" set "cli=Alpha"


echo:  & echo =================================================================================== & echo:
set /p ver=Enter your client version/build number.
echo:  & echo =================================================================================== & echo:
set /p sys=Enter your system version and device name.
echo:  & echo =================================================================================== & echo:
echo Reported by {username#discrim} & echo Short description:%desc% & echo Steps to reproduce: & echo -

