echo Saving Palworld Server... && C:\Directory\Input\Here\ARRCON-3.3.7-Windows\ARRCON.exe -H 127.0.0.1 -P 25575 -p AdminPassword "save"
echo Palworld server Saved...
timeout 5
echo  Shutting Down Palworld Server... && C:\Directory\Input\Here\ARRCON-3.3.7-Windows\ARRCON.exe -H 127.0.0.1 -P 25575 -p AdminPassword "shutdown 60 The_server_will_be_restarting_in_60_seconds"
timeout 30
echo Sending Restart Update Message... && C:\Directory\Input\Here\ARRCON-3.3.7-Windows\ARRCON.exe -H 127.0.0.1 -P 25575 -p AdminPassword "broadcast The_server_will_be_restarting_in_30_seconds"
timeout 20
echo Sending Restart Update Message... && C:\Directory\Input\Here\ARRCON-3.3.7-Windows\ARRCON.exe -H 127.0.0.1 -P 25575 -p AdminPassword "broadcast The_server_will_be_restarting_in_10_seconds"
timeout 20
echo Palworld Server Was Shutdown. Ending residual processes...
set task1=PalServer-Win64-Test-Cmd

tasklist | find /i "%task1%" > nul
if errorlevel 1 (
    echo Task %task1% is not running. Starting Server...
) else (
    echo Task %task1% is running. Ending the process...
    taskkill /f /im PalServer-Win64-Test-Cmd.exe
    echo Process ended. Starting the Server...
)
timeout 5
call "F:\Directory\Input\Here\Start Server.bat"
echo Palworld Server Started.
echo Exiting in 5 seconds...
timeout 5
exit
