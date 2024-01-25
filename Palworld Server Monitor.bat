@echo off
set task1=PalServer-Win64-Test-Cmd

tasklist | find /i "%task1%" > nul
if %errorlevel% neq 0 (
    echo %task1% is not running. Starting...
	call "F:\Directory\Input\Here\Start Server.bat"
	echo Sending email notification
	Powershell.exe -File "C:\Input\Directory\Here\Palworld Send Email.ps1"
	echo Email Sent
) else (
    echo %task1% is already running.
)
echo exiting in 5 seconds...
timeout 5
exit
