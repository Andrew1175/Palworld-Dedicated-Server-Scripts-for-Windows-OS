$User = "your_email@domain.com"
$File = "C:\EmailPassword.txt"
$cred=New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, (Get-Content $File | ConvertTo-SecureString)
$EmailTo = "your_email@domain.com"
$EmailFrom = "your_email@domain.com"
$Subject = "Palworld Server Crash"
$Body = "This email indicates that the Palworld server was not running. No worries though. The server was restarted. Beep beep boop."
$SMTPServer ="smtp.gmail.com"
$SMTPMessage = New-Object System.Net.Mail.MailMessage($EmailFrom,$EmailTo,$Subject,$Body)
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPClient.EnableSsl = $true
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($cred.UserName, $cred.Password);
$SMTPClient.Send($SMTPMessage)
