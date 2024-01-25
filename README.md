# Palworld-Dedicated-Server-Scripts-for-Windows-OS
These are scripts that you can use to help manage your Palworld dedicated server.

The first script (Palworld Server Restart.bat) saves, shuts down, sends periodic messages until the shutdown, and then restarts the server.

Requirements:
  - ARRCON - https://github.com/radj307/ARRCON
  - RCON needs to be enabled on your Palworld server
  - Windows

Notes for the first script:
  - Adjust timeouts if you adjust the shutdown timer.
  - Change the directory where your .bat file resides that starts your server.
  - You can then use Windows Task Scheduler to run this every 12 hours or whatever you prefer. (I run it every 4 hours due to a memory leak I've been seeing)

The second script checks to see if the Palworld server service is running. If it detects it's running nothing is done. If it detects it isn't running then it runs your .bat file that starts your server and then sends an email notification alerting you that the server was down.

Notes for the second script:
  - Change the directory where your .bat file resides that starts your server.
  - Change the "Palworld Send Email.ps1" file to include your own information.
  - You can then use Windows Task Scheduler to run this every 5 minutes or whatever you prefer. (I run it every 5 minutes)
