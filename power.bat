@echo off
goto menu
:menu
echo.
echo What would you like to do?
echo.
echo Choice
echo.
echo 1 Power Off
echo 2 Restart
echo 3 Log Off
echo 4 Switch User
echo 5 Hibernate
echo 6 Quit
echo.
:choice
set /P C=[1,2,3,4,5,6]?
if "%C%"=="6" goto quit
if "%C%"=="5" goto hibernate
if "%C%"=="4" goto switch
if "%C%"=="3" goto logoff
if "%C%"=="2" goto restart
if "%C%"=="1" goto power
goto choice

:power
shutdown -s
goto quit
:restart
shutdown -r
goto quit
:logoff
shutdown -l
goto quit
:switch
tsdiscon
goto quit
:hibernate
%windir%\system32\rundll32.exe powrprof.dll,SetSuspendState Hibernate
goto quit
:quit
exit
:end