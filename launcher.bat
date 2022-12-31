@echo off
:start
set launcher=
set /p launcher=Welcome to the WHS Com-Lab Launcher! Please select the application you want to launch (input "help" for a list of applications):
if not '%launcher%'=='' set directory=%launcher:~0,1%
if '%launcher%'=='help' goto help
if '%launcher%'=='cmd' goto cmd
if '%launcher%'=='powershell' goto pwsh
if '%launcher%'=='pwsh' goto pwsh
if '%launcher%'=='compmgmt' goto compmgmt
if '%launcher%'=='run' goto yes
if '%launcher%'=='taskmgr' goto taskmgr
if '%launcher%'=='diskmgmt' goto diskmgmt
if '%launcher%'=='control' goto cp
if '%launcher%'=='no' goto no
if '%launcher%'=='No' goto no
if '%launcher%'=='NO' goto no
echo "%launcher%" is not a valid application. Input "help" for a list of applications.
echo.
goto start

:help
echo Here is a list of applications and what command you need to run them:
echo cmd - Command prompt
echo powershell/pwsh - Windows Powershell
echo compmgmt - Computer Management
echo diskmgmt - Disk Management
echo run - Run dialog box (Win+R)
echo taskmgr - Task Manager
echo control - Control Panel

:cmd
cmd.exe
exit

:pwsh
"%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe"
exit

:compmgmt
compmgmt.msc
exit

:diskmgmt
diskmgmt.msc
exit

:run
rundll32.exe shell32.dll,#61
exit

:taskmgr
taskmgr.exe /0
exit

:cp
powershell control panel
exit
