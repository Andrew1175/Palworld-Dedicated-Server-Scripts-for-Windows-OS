$User = "your_email@domain.com"
$Password = "Your_Password"
$EmailTo = "your_email@domain.com"
$EmailFrom = "your_email@domain.com"
$Subject = "Palworld Server Crash"
$Body = "This email indicates that the Palworld server was not running. No worries though. The server was restarted. Beep beep boop."
$SMTPServer ="smtp.gmail.com"
$SMTPMessage = New-Object System.Net.Mail.MailMessage($EmailFrom,$EmailTo,$Subject,$Body)
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPClient.EnableSsl = $true
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($User, $Password);
$SMTPClient.Send($SMTPMessage)
